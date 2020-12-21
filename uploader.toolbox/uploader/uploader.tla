------------------------------ MODULE uploader ------------------------------
EXTENDS Sequences, Integers, TLC
CONSTANTS Users, Workers, NULL

\* For model checking
CONSTANTS MaxVersion, MaxId

Ids == 1..MaxId
Versions == 1..MaxVersion

SeqOf(set, n) == UNION {[1..m -> set] : m \in 0..n}
Range(f) == {f[x]: x \in DOMAIN f}
Nonempty(seq) == seq /= <<>>
set ++ e == set \union {e}
set -- e == set \      {e}

seq (+) elem == Append(seq, elem)

Upload == [from: Users, version: Nat, id: Nat]
ModelUpload == [from: Users, version: Versions, id: Ids]

Msgs == [id: Nat, action: {"create", "edit", "delete"}]


UniqueOnIds(set) ==
  \A m1, m2 \in set:
    m1 /= m2 <=> m1.id /= m2.id

(*--algorithm uploader

variables
  uploads = {};
  content = {};
  queue = <<>>;
  next_id = 1;
  
define
  UploadWith(id) == CHOOSE msg \in uploads: msg.id = id
  ContentWith(id) == CHOOSE msg \in content: msg.id = id

  ExistsUploadWith(id) == 
    \E x \in uploads: 
       x.id = id
  ExistsContentWith(id) == 
    \E x \in content: 
       x.id = id

  ModelTypeInvariant ==
    /\ uploads \in SUBSET ModelUpload
    /\ content \in SUBSET ModelUpload
    
  \* Used to enforce a bounded model
  ModelStateConstraint ==
   /\ \A x \in uploads \union content:
        /\ x.version < MaxVersion
        /\ x.id < MaxId
   /\ next_id < MaxId
    
  TypeInvariant ==
    /\ uploads \in SUBSET Upload
    /\ content \in SUBSET Upload
    /\ queue \in Seq(Msgs)
  
  NoDuplicateIds ==
    /\ UniqueOnIds(uploads)
    /\ UniqueOnIds(content)
  
  ContentMatchesUploads ==
    []<>(
      \A c \in content:
        \E u \in uploads:
          c = u
      )
end define;

macro send_msg(id, action) begin
  queue := queue (+) [id |-> id, action |-> action];
end macro;

process user \in Users
begin
  User:
    while TRUE do
      either
        with 
          create = [from |-> self, version |-> 1, id |-> next_id]
        do
          uploads := uploads ++ create;
          send_msg(create.id, "create");
          next_id := next_id + 1;
        end with;
      or
        with
          upload \in {u \in uploads: u.from = self},
          edit = [upload EXCEPT !.version = @ + 1]
        do
          uploads := uploads -- upload ++ edit;
          send_msg(edit.id, "edit");
        end with;
      or
        with 
          delete \in {u \in uploads: u.from = self}
        do
          uploads := uploads -- delete;
          send_msg(delete.id, "delete");
        end with;
      end either;
    end while;
end process;

fair process worker \in Workers
variables
  msg = NULL, local = NULL;
begin
  Receive:
    await Nonempty(queue);
    msg := Head(queue);
    queue := Tail(queue);
    if msg.action = "create" then
      Create:
        if \E x \in uploads: 
           x.id = msg.id then
        with upload = UploadWith(msg.id) do
          content := content ++ UploadWith(msg.id);
        end with;
        end if;
    elsif msg.action = "edit" then
      Edit:
        if
          /\ ExistsUploadWith(msg.id)
          /\ ExistsContentWith(msg.id)
        then
          with 
            upload = UploadWith(msg.id),
            exists = ContentWith(msg.id)
          do
            content := content -- exists;
            local := upload;
          end with;
        
          PushEdit:
            if 
              /\ ExistsUploadWith(local.id)  
              /\ UploadWith(local.id).version > local.version 
            then
              local := NULL;
              goto Edit;
            else
              content := content ++ local;
              local := NULL;
            end if;
        end if; 

    elsif msg.action = "delete" then
      Delete:
        if \E x \in content: 
           x.id = msg.id
        then
          with
            exists = ContentWith(msg.id)
          do
            content := content -- exists
          end with;
        end if;
    else \* wtf
      assert FALSE;
    end if;
  Repeat:
    msg := NULL;
    goto Receive;
end process;

fair process cleaner = "cleaner"
begin
  Clean:
    while TRUE do
      with
        id \in 
          LET
            upload_ids  == {u.id: u \in uploads}
            content_ids == {c.id: c \in content}
          IN
            content_ids \ upload_ids
        ,
        exists = ContentWith(id)
      do
        content := content -- exists
      end with;
    end while;
end process; 
end algorithm; *)
\* BEGIN TRANSLATION (chksum(pcal) = "14ade11" /\ chksum(tla) = "fff70a8")
VARIABLES uploads, content, queue, next_id, pc

(* define statement *)
UploadWith(id) == CHOOSE msg \in uploads: msg.id = id
ContentWith(id) == CHOOSE msg \in content: msg.id = id

ExistsUploadWith(id) ==
  \E x \in uploads:
     x.id = id
ExistsContentWith(id) ==
  \E x \in content:
     x.id = id

ModelTypeInvariant ==
  /\ uploads \in SUBSET ModelUpload
  /\ content \in SUBSET ModelUpload


ModelStateConstraint ==
 /\ \A x \in uploads \union content:
      /\ x.version < MaxVersion
      /\ x.id < MaxId
 /\ next_id < MaxId

TypeInvariant ==
  /\ uploads \in SUBSET Upload
  /\ content \in SUBSET Upload
  /\ queue \in Seq(Msgs)

NoDuplicateIds ==
  /\ UniqueOnIds(uploads)
  /\ UniqueOnIds(content)

ContentMatchesUploads ==
  []<>(
    \A c \in content:
      \E u \in uploads:
        c = u
    )

VARIABLES msg, local

vars == << uploads, content, queue, next_id, pc, msg, local >>

ProcSet == (Users) \cup (Workers) \cup {"cleaner"}

Init == (* Global variables *)
        /\ uploads = {}
        /\ content = {}
        /\ queue = <<>>
        /\ next_id = 1
        (* Process worker *)
        /\ msg = [self \in Workers |-> NULL]
        /\ local = [self \in Workers |-> NULL]
        /\ pc = [self \in ProcSet |-> CASE self \in Users -> "User"
                                        [] self \in Workers -> "Receive"
                                        [] self = "cleaner" -> "Clean"]

User(self) == /\ pc[self] = "User"
              /\ \/ /\ LET create == [from |-> self, version |-> 1, id |-> next_id] IN
                         /\ uploads' = uploads ++ create
                         /\ queue' = queue (+) [id |-> (create.id), action |-> "create"]
                         /\ next_id' = next_id + 1
                 \/ /\ \E upload \in {u \in uploads: u.from = self}:
                         LET edit == [upload EXCEPT !.version = @ + 1] IN
                           /\ uploads' = uploads -- upload ++ edit
                           /\ queue' = queue (+) [id |-> (edit.id), action |-> "edit"]
                    /\ UNCHANGED next_id
                 \/ /\ \E delete \in {u \in uploads: u.from = self}:
                         /\ uploads' = uploads -- delete
                         /\ queue' = queue (+) [id |-> (delete.id), action |-> "delete"]
                    /\ UNCHANGED next_id
              /\ pc' = [pc EXCEPT ![self] = "User"]
              /\ UNCHANGED << content, msg, local >>

user(self) == User(self)

Receive(self) == /\ pc[self] = "Receive"
                 /\ Nonempty(queue)
                 /\ msg' = [msg EXCEPT ![self] = Head(queue)]
                 /\ queue' = Tail(queue)
                 /\ IF msg'[self].action = "create"
                       THEN /\ pc' = [pc EXCEPT ![self] = "Create"]
                       ELSE /\ IF msg'[self].action = "edit"
                                  THEN /\ pc' = [pc EXCEPT ![self] = "Edit"]
                                  ELSE /\ IF msg'[self].action = "delete"
                                             THEN /\ pc' = [pc EXCEPT ![self] = "Delete"]
                                             ELSE /\ Assert(FALSE, 
                                                            "Failure of assertion at line 166, column 7.")
                                                  /\ pc' = [pc EXCEPT ![self] = "Repeat"]
                 /\ UNCHANGED << uploads, content, next_id, local >>

Create(self) == /\ pc[self] = "Create"
                /\ IF \E x \in uploads:
                      x.id = msg[self].id
                      THEN /\ LET upload == UploadWith(msg[self].id) IN
                                content' = content ++ UploadWith(msg[self].id)
                      ELSE /\ TRUE
                           /\ UNCHANGED content
                /\ pc' = [pc EXCEPT ![self] = "Repeat"]
                /\ UNCHANGED << uploads, queue, next_id, msg, local >>

Edit(self) == /\ pc[self] = "Edit"
              /\ IF /\ ExistsUploadWith(msg[self].id)
                    /\ ExistsContentWith(msg[self].id)
                    THEN /\ LET upload == UploadWith(msg[self].id) IN
                              LET exists == ContentWith(msg[self].id) IN
                                /\ content' = content -- exists
                                /\ local' = [local EXCEPT ![self] = upload]
                         /\ pc' = [pc EXCEPT ![self] = "PushEdit"]
                    ELSE /\ pc' = [pc EXCEPT ![self] = "Repeat"]
                         /\ UNCHANGED << content, local >>
              /\ UNCHANGED << uploads, queue, next_id, msg >>

PushEdit(self) == /\ pc[self] = "PushEdit"
                  /\ IF /\ ExistsUploadWith(local[self].id)
                        /\ UploadWith(local[self].id).version > local[self].version
                        THEN /\ local' = [local EXCEPT ![self] = NULL]
                             /\ pc' = [pc EXCEPT ![self] = "Edit"]
                             /\ UNCHANGED content
                        ELSE /\ content' = content ++ local[self]
                             /\ local' = [local EXCEPT ![self] = NULL]
                             /\ pc' = [pc EXCEPT ![self] = "Repeat"]
                  /\ UNCHANGED << uploads, queue, next_id, msg >>

Delete(self) == /\ pc[self] = "Delete"
                /\ IF \E x \in content:
                      x.id = msg[self].id
                      THEN /\ LET exists == ContentWith(msg[self].id) IN
                                content' = content -- exists
                      ELSE /\ TRUE
                           /\ UNCHANGED content
                /\ pc' = [pc EXCEPT ![self] = "Repeat"]
                /\ UNCHANGED << uploads, queue, next_id, msg, local >>

Repeat(self) == /\ pc[self] = "Repeat"
                /\ msg' = [msg EXCEPT ![self] = NULL]
                /\ pc' = [pc EXCEPT ![self] = "Receive"]
                /\ UNCHANGED << uploads, content, queue, next_id, local >>

worker(self) == Receive(self) \/ Create(self) \/ Edit(self)
                   \/ PushEdit(self) \/ Delete(self) \/ Repeat(self)

Clean == /\ pc["cleaner"] = "Clean"
         /\ \E id \in LET
                        upload_ids  == {u.id: u \in uploads}
                        content_ids == {c.id: c \in content}
                      IN
                        content_ids \ upload_ids:
              LET exists == ContentWith(id) IN
                content' = content -- exists
         /\ pc' = [pc EXCEPT !["cleaner"] = "Clean"]
         /\ UNCHANGED << uploads, queue, next_id, msg, local >>

cleaner == Clean

Next == cleaner
           \/ (\E self \in Users: user(self))
           \/ (\E self \in Workers: worker(self))

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Workers : WF_vars(worker(self))
        /\ WF_vars(cleaner)

\* END TRANSLATION 

=============================================================================
\* Modification History
\* Last modified Sun Dec 20 14:11:28 CST 2020 by Administrator
\* Created Sun Dec 20 14:07:05 CST 2020 by Administrator

(* automatically generated -- do not edit manually *)
theory record_tlaps imports Constant Zenon begin
ML_command {* writeln ("*** TLAPS PARSED\n"); *}
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

lemma ob'16:
fixes Participant
fixes state state'
(* usable definition InitState suppressed *)
(* usable definition Init suppressed *)
(* usable definition Next suppressed *)
(* usable definition Spec suppressed *)
(* usable definition SV!TypeOK suppressed *)
(* usable definition SV!Init suppressed *)
(* usable definition SV!IncreaseMaxBal suppressed *)
(* usable definition SV!Next suppressed *)
(* usable definition SV!Spec suppressed *)
fixes p
assumes p_in : "(p \<in> (Participant))"
fixes b
assumes b_in : "(b \<in> (Nat))"
assumes v'22: "(((state) \<in> ([(Participant) \<rightarrow> ([(Participant) \<rightarrow> ([''maxBal'' : (Nat), ''maxVBal'' : (Nat)])])])))"
assumes v'23: "((less ((fapply ((fapply ((fapply ((state), (p))), (p))), (''maxBal''))), (b))))"
assumes v'24: "((((a_statehash_primea :: c)) = ([(state) EXCEPT ![(p)] = ([(fapply ((state), (p))) EXCEPT ![(p)] = ([(fapply ((fapply ((state), (p))), (p))) EXCEPT ![''maxBal''] = (b)])])])))"
shows "((([ p_1 \<in> (Participant)  \<mapsto> (fapply ((fapply ((fapply (((a_statehash_primea :: c)), (p_1))), (p_1))), (''maxBal'')))]) = ([([ p_1 \<in> (Participant)  \<mapsto> (fapply ((fapply ((fapply ((state), (p_1))), (p_1))), (''maxBal'')))]) EXCEPT ![(p)] = (b)])))"(is "PROP ?ob'16")
proof -
ML_command {* writeln "*** TLAPS ENTER 16"; *}
show "PROP ?ob'16"

(* BEGIN ZENON INPUT
;; file=record_tlaps.tlaps/tlapm_4e9085.znn; winfile="`cygpath -a -w "record_tlaps.tlaps/tlapm_4e9085.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >record_tlaps.tlaps/tlapm_4e9085.znn.out
;; obligation #16
$hyp "p_in" (TLA.in p Participant)
$hyp "b_in" (TLA.in b arith.N)
$hyp "v'22" (TLA.in state
(TLA.FuncSet Participant (TLA.FuncSet Participant (TLA.recordset "maxBal" arith.N "maxVBal" arith.N))))
$hyp "v'23" (arith.lt (TLA.fapply (TLA.fapply (TLA.fapply state p) p) "maxBal")
b)
$hyp "v'24" (= a_statehash_primea
(TLA.except state p (TLA.except (TLA.fapply state p) p (TLA.except (TLA.fapply (TLA.fapply state p) p) "maxBal" b))))
$goal (= (TLA.Fcn Participant ((p_1) (TLA.fapply (TLA.fapply (TLA.fapply a_statehash_primea p_1) p_1) "maxBal")))
(TLA.except (TLA.Fcn Participant ((p_1) (TLA.fapply (TLA.fapply (TLA.fapply state p_1) p_1) "maxBal"))) p b))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_He:"(a_statehash_primea=except(state, p, except((state[p]), p, except(((state[p])[p]), ''maxBal'', b))))" (is "_=?z_hh")
 using v'24 by blast
 have z_Hc:"(state \\in FuncSet(Participant, FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)])))" (is "?z_hc")
 using v'22 by blast
 have z_Ha:"(p \\in Participant)" (is "?z_ha")
 using p_in by blast
 have zenon_L1_: "(~(''maxBal'' \\in {''maxBal'', ''maxVBal''})) ==> FALSE" (is "?z_hw ==> FALSE")
 proof -
  assume z_Hw:"?z_hw" (is "~?z_hx")
  have z_Hz: "(''maxBal''~=''maxBal'')" (is "?z_ho~=_")
  by (rule zenon_notin_addElt_0 [of "?z_ho" "?z_ho" "{''maxVBal''}", OF z_Hw])
  show FALSE
  by (rule zenon_noteq [OF z_Hz])
 qed
 have zenon_L2_: "((state[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)))=>((Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))[zenon_Vg])=(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)[zenon_Vg])))))])~=(state[p])) ==> (p=(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)))=>((Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))[zenon_Vg])=(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)[zenon_Vg])))))) ==> FALSE" (is "?z_hbb ==> ?z_hby ==> FALSE")
 proof -
  assume z_Hbb:"?z_hbb" (is "?z_hbc~=?z_hl")
  assume z_Hby:"?z_hby" (is "_=?z_hbd")
  show FALSE
  proof (rule zenon_noteq [of "?z_hl"])
   have z_Hbz: "(?z_hbd=p)"
   by (rule sym [OF z_Hby])
   have z_Hca: "(?z_hl~=?z_hl)"
   by (rule subst [where P="(\<lambda>zenon_Vfnwb. ((state[zenon_Vfnwb])~=?z_hl))", OF z_Hbz], fact z_Hbb)
   thus "(?z_hl~=?z_hl)" .
  qed
 qed
 have zenon_L3_: "(DOMAIN(((state[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)))=>((Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))[zenon_Vg])=(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)[zenon_Vg])))))])[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)))=>((Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))[zenon_Vg])=(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)[zenon_Vg])))))]))~=DOMAIN(((state[p])[p]))) ==> (p=(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)))=>((Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))[zenon_Vg])=(except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b)[zenon_Vg])))))) ==> FALSE" (is "?z_hcf ==> ?z_hby ==> FALSE")
 proof -
  assume z_Hcf:"?z_hcf" (is "?z_hcg~=?z_hci")
  assume z_Hby:"?z_hby" (is "_=?z_hbd")
  show FALSE
  proof (rule zenon_noteq [of "?z_hci"])
   have z_Hcj: "(((state[?z_hbd])[?z_hbd])=((state[p])[p]))" (is "?z_hch=?z_hn")
   proof (rule zenon_nnpp [of "(?z_hch=?z_hn)"])
    assume z_Hck:"(?z_hch~=?z_hn)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hn"])
     have z_Hcl: "((state[?z_hbd])=(state[p]))" (is "?z_hbc=?z_hl")
     proof (rule zenon_nnpp [of "(?z_hbc=?z_hl)"])
      assume z_Hbb:"(?z_hbc~=?z_hl)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hbb z_Hby])
     qed
     have z_Hbz: "(?z_hbd=p)"
     by (rule sym [OF z_Hby])
     have z_Hcm: "((?z_hl[?z_hbd])~=?z_hn)" (is "?z_hcn~=_")
     by (rule subst [where P="(\<lambda>zenon_Vgnwb. ((zenon_Vgnwb[?z_hbd])~=?z_hn))", OF z_Hcl], fact z_Hck)
     have z_Hcs: "(?z_hn~=?z_hn)"
     by (rule subst [where P="(\<lambda>zenon_Vhnwb. ((?z_hl[zenon_Vhnwb])~=?z_hn))", OF z_Hbz], fact z_Hcm)
     thus "(?z_hn~=?z_hn)" .
    qed
   qed
   have z_Hcx: "(?z_hci~=?z_hci)"
   by (rule subst [where P="(\<lambda>zenon_Vinwb. (DOMAIN(zenon_Vinwb)~=?z_hci))", OF z_Hcj], fact z_Hcf)
   thus "(?z_hci~=?z_hci)" .
  qed
 qed
 assume z_Hf:"(Fcn(Participant, (\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal''])))~=except(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))), p, b))" (is "?z_hbs~=?z_hbj")
 have z_Hdc: "(DOMAIN(state)=Participant)" (is "?z_hdd=_")
 by (rule zenon_in_funcset_1 [of "state" "Participant" "FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)])", OF z_Hc])
 have z_Hde: "(~(((isAFcn(?z_hbs)&isAFcn(?z_hbj))&(DOMAIN(?z_hbs)=DOMAIN(?z_hbj)))&(\\A zenon_Vg:((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))))" (is "~(?z_hdg&?z_hdm)")
 by (rule zenon_notfunequal_0 [of "?z_hbs" "?z_hbj", OF z_Hf])
 show FALSE
 proof (rule zenon_notand [OF z_Hde])
  assume z_Hdn:"(~?z_hdg)" (is "~(?z_hdh&?z_hdk)")
  show FALSE
  proof (rule zenon_notand [OF z_Hdn])
   assume z_Hdo:"(~?z_hdh)" (is "~(?z_hdi&?z_hdj)")
   show FALSE
   proof (rule zenon_notand [OF z_Hdo])
    assume z_Hdp:"(~?z_hdi)"
    show FALSE
    by (rule zenon_notisafcn_fcn [of "Participant" "(\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal'']))", OF z_Hdp])
   next
    assume z_Hdq:"(~?z_hdj)"
    show FALSE
    by (rule zenon_notisafcn_except [of "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))" "p" "b", OF z_Hdq])
   qed
  next
   assume z_Hdr:"(DOMAIN(?z_hbs)~=DOMAIN(?z_hbj))" (is "?z_hdl~=?z_hbi")
   have z_Hds: "(Participant~=?z_hbi)"
   by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vxmwb. (zenon_Vxmwb~=?z_hbi))" "Participant" "(\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal'']))", OF z_Hdr])
   have z_Hdw: "(Participant~=DOMAIN(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))))" (is "_~=?z_hdx")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vzmwb. (Participant~=zenon_Vzmwb))" "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))" "p" "b", OF z_Hds])
   have z_Heb: "(Participant~=Participant)"
   by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vzmwb. (Participant~=zenon_Vzmwb))" "Participant" "(\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))", OF z_Hdw])
   show FALSE
   by (rule zenon_noteq [OF z_Heb])
  qed
 next
  assume z_Hec:"(~?z_hdm)" (is "~(\\A x : ?z_hed(x))")
  have z_Hee: "(\\E zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))" (is "\\E x : ?z_hef(x)")
  by (rule zenon_notallex_0 [of "?z_hed", OF z_Hec])
  have z_Heg: "?z_hef((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))))" (is "~(?z_heh=>?z_hei)")
  by (rule zenon_ex_choose_0 [of "?z_hef", OF z_Hee])
  have z_Heh: "?z_heh"
  by (rule zenon_notimply_0 [OF z_Heg])
  have z_Hej: "((?z_hbs[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])~=(?z_hbj[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))]))" (is "?z_hek~=?z_hel")
  by (rule zenon_notimply_1 [OF z_Heg])
  have z_Hem: "((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in DOMAIN(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))))" (is "?z_hem")
  by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vaa. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in zenon_Vaa))" "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))" "p" "b", OF z_Heh])
  have z_Heq: "((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in Participant)" (is "?z_heq")
  by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vaa. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in zenon_Vaa))" "Participant" "(\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))", OF z_Hem])
  have z_Her: "((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in ?z_hdd)" (is "?z_her")
  by (rule ssubst [where P="(\<lambda>zenon_Vaa. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))) \\in zenon_Vaa))", OF z_Hdc z_Heq])
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vy. (zenon_Vy~=?z_hel))" "Participant" "(\<lambda>p_1. (((a_statehash_primea[p_1])[p_1])[''maxBal'']))" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))", OF z_Hej])
   assume z_Hev:"(~?z_heq)"
   show FALSE
   by (rule notE [OF z_Hev z_Heq])
  next
   assume z_Hew:"((((a_statehash_primea[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[''maxBal''])~=?z_hel)" (is "?z_hex~=_")
   have z_Hfa: "((((?z_hh[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[''maxBal''])~=?z_hel)" (is "?z_hfb~=_")
   by (rule subst [where P="(\<lambda>zenon_Venwb. ((((zenon_Venwb[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[''maxBal''])~=?z_hel))", OF z_He z_Hew])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Via. (((zenon_Via[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))])[''maxBal''])~=?z_hel))" "state" "p" "except((state[p]), p, except(((state[p])[p]), ''maxBal'', b))" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg])))))", OF z_Hfa])
    assume z_Her:"?z_her"
    assume z_Hby:"(p=(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))))" (is "_=?z_hbd")
    assume z_Hfp:"(((except((state[p]), p, except(((state[p])[p]), ''maxBal'', b))[?z_hbd])[''maxBal''])~=?z_hel)" (is "?z_hfq~=_")
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Via. ((zenon_Via[''maxBal''])~=?z_hel))" "(state[p])" "p" "except(((state[p])[p]), ''maxBal'', b)" "?z_hbd", OF z_Hfp])
     assume z_Hfv:"(?z_hbd \\in DOMAIN((state[p])))" (is "?z_hfv")
     assume z_Hby:"(p=?z_hbd)"
     assume z_Hfx:"((except(((state[p])[p]), ''maxBal'', b)[''maxBal''])~=?z_hel)" (is "?z_hfy~=_")
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vy. (zenon_Vy~=?z_hel))" "((state[p])[p])" "''maxBal''" "b" "''maxBal''", OF z_Hfx])
      assume z_Hfz:"(''maxBal'' \\in DOMAIN(((state[p])[p])))" (is "?z_hfz")
      assume z_Hga:"(''maxBal''=''maxBal'')" (is "?z_ho=_")
      assume z_Hgb:"(b~=?z_hel)"
      show FALSE
      proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vkmwb. (b~=zenon_Vkmwb))" "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[?z_ho])))" "p" "b" "?z_hbd", OF z_Hgb])
       assume z_Hem:"?z_hem"
       assume z_Hby:"(p=?z_hbd)"
       assume z_Hgf:"(b~=b)"
       show FALSE
       by (rule zenon_noteq [OF z_Hgf])
      next
       assume z_Hem:"?z_hem"
       assume z_Hgg:"(p~=?z_hbd)"
       assume z_Hgh:"(b~=(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[?z_ho])))[?z_hbd]))" (is "_~=?z_hgi")
       show FALSE
       by (rule notE [OF z_Hgg z_Hby])
      next
       assume z_Hgj:"(~?z_hem)"
       show FALSE
       by (rule notE [OF z_Hgj z_Hem])
      qed
     next
      assume z_Hfz:"(''maxBal'' \\in DOMAIN(((state[p])[p])))" (is "?z_hfz")
      assume z_Hz:"(''maxBal''~=''maxBal'')" (is "?z_ho~=_")
      assume z_Hgk:"((((state[p])[p])[?z_ho])~=?z_hel)" (is "?z_hgl~=_")
      show FALSE
      by (rule zenon_noteq [OF z_Hz])
     next
      assume z_Hgm:"(~(''maxBal'' \\in DOMAIN(((state[p])[p]))))" (is "~?z_hfz")
      have z_Hgn: "(\\A zenon_Vk:((zenon_Vk \\in Participant)=>((state[zenon_Vk]) \\in FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)]))))" (is "\\A x : ?z_hgt(x)")
      by (rule zenon_in_funcset_2 [of "state" "Participant" "FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)])", OF z_Hc])
      have z_Hgu: "?z_hgt(?z_hbd)" (is "_=>?z_hgv")
      by (rule zenon_all_0 [of "?z_hgt" "?z_hbd", OF z_Hgn])
      show FALSE
      proof (rule zenon_imply [OF z_Hgu])
       assume z_Hev:"(~?z_heq)"
       show FALSE
       by (rule notE [OF z_Hev z_Heq])
      next
       assume z_Hgv:"?z_hgv"
       have z_Hgw: "(\\A zenon_Vre:((zenon_Vre \\in Participant)=>(((state[?z_hbd])[zenon_Vre]) \\in [''maxBal'' : (Nat), ''maxVBal'' : (Nat)])))" (is "\\A x : ?z_hhc(x)")
       by (rule zenon_in_funcset_2 [of "(state[?z_hbd])" "Participant" "[''maxBal'' : (Nat), ''maxVBal'' : (Nat)]", OF z_Hgv])
       have z_Hhd: "?z_hhc(?z_hbd)" (is "_=>?z_hhe")
       by (rule zenon_all_0 [of "?z_hhc" "?z_hbd", OF z_Hgw])
       show FALSE
       proof (rule zenon_imply [OF z_Hhd])
        assume z_Hev:"(~?z_heq)"
        show FALSE
        by (rule notE [OF z_Hev z_Heq])
       next
        assume z_Hhe:"?z_hhe"
        let ?z_hch = "((state[?z_hbd])[?z_hbd])"
        have z_Hhf: "(DOMAIN(?z_hch)={''maxBal'', ''maxVBal''})" using z_Hhe by auto
        let ?z_hhg = "<<''maxBal'', ''maxVBal''>>"
        let ?z_hhh = "<<Nat, Nat>>"
        have z_Hhi: "(\\A zenon_Vwod:((zenon_Vwod \\in DOMAIN(?z_hch))<=>(zenon_Vwod \\in {''maxBal'', ''maxVBal''})))" (is "\\A x : ?z_hhn(x)")
        by (rule zenon_setequal_0 [of "DOMAIN(?z_hch)" "{''maxBal'', ''maxVBal''}", OF z_Hhf])
        have z_Hho: "?z_hhn(''maxBal'')" (is "?z_hhp<=>?z_hx")
        by (rule zenon_all_0 [of "?z_hhn" "''maxBal''", OF z_Hhi])
        show FALSE
        proof (rule zenon_equiv [OF z_Hho])
         assume z_Hhq:"(~?z_hhp)"
         assume z_Hw:"(~?z_hx)"
         show FALSE
         by (rule zenon_L1_ [OF z_Hw])
        next
         assume z_Hhp:"?z_hhp"
         assume z_Hx:"?z_hx"
         show FALSE
         proof (rule notE [OF z_Hgm])
          have z_Hhr: "(DOMAIN(?z_hch)=DOMAIN(((state[p])[p])))" (is "?z_hcg=?z_hci")
          proof (rule zenon_nnpp [of "(?z_hcg=?z_hci)"])
           assume z_Hcf:"(?z_hcg~=?z_hci)"
           show FALSE
           by (rule zenon_L3_ [OF z_Hcf z_Hby])
          qed
          have z_Hfz: "?z_hfz"
          by (rule subst [where P="(\<lambda>zenon_Vjnwb. (''maxBal'' \\in zenon_Vjnwb))", OF z_Hhr], fact z_Hhp)
          thus "?z_hfz" .
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hfv:"(?z_hbd \\in DOMAIN((state[p])))" (is "?z_hfv")
     assume z_Hgg:"(p~=?z_hbd)"
     assume z_Hhv:"((((state[p])[?z_hbd])[''maxBal''])~=?z_hel)" (is "?z_hhw~=_")
     show FALSE
     by (rule notE [OF z_Hgg z_Hby])
    next
     assume z_Hhx:"(~(?z_hbd \\in DOMAIN((state[p]))))" (is "~?z_hfv")
     show FALSE
     proof (rule notE [OF z_Hhx])
      have z_Hhy: "(DOMAIN(?z_hbj)=DOMAIN((state[p])))" (is "?z_hbi=?z_hfw")
      proof (rule zenon_nnpp [of "(?z_hbi=?z_hfw)"])
       assume z_Hhz:"(?z_hbi~=?z_hfw)"
       have z_Hia: "(DOMAIN(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))))~=?z_hfw)" (is "?z_hdx~=_")
       by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vua. (zenon_Vua~=?z_hfw))" "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))" "p" "b", OF z_Hhz])
       have z_Hie: "(Participant~=?z_hfw)"
       by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vua. (zenon_Vua~=?z_hfw))" "Participant" "(\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))", OF z_Hia])
       have z_Hgn: "(\\A zenon_Vk:((zenon_Vk \\in Participant)=>((state[zenon_Vk]) \\in FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)]))))" (is "\\A x : ?z_hgt(x)")
       by (rule zenon_in_funcset_2 [of "state" "Participant" "FuncSet(Participant, [''maxBal'' : (Nat), ''maxVBal'' : (Nat)])", OF z_Hc])
       have z_Hif: "?z_hgt(p)" (is "_=>?z_hig")
       by (rule zenon_all_0 [of "?z_hgt" "p", OF z_Hgn])
       show FALSE
       proof (rule zenon_imply [OF z_Hif])
        assume z_Hih:"(~?z_ha)"
        show FALSE
        by (rule notE [OF z_Hih z_Ha])
       next
        assume z_Hig:"?z_hig"
        have z_Hii: "(?z_hfw=Participant)"
        by (rule zenon_in_funcset_1 [of "(state[p])" "Participant" "[''maxBal'' : (Nat), ''maxVBal'' : (Nat)]", OF z_Hig])
        show FALSE
        by (rule zenon_eqsym [OF z_Hii z_Hie])
       qed
      qed
      have z_Hfv: "?z_hfv"
      by (rule subst [where P="(\<lambda>zenon_Vaa. (?z_hbd \\in zenon_Vaa))", OF z_Hhy], fact z_Heh)
      thus "?z_hfv" .
     qed
    qed
   next
    assume z_Her:"?z_her"
    assume z_Hgg:"(p~=(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hbj))=>((?z_hbs[zenon_Vg])=(?z_hbj[zenon_Vg]))))))" (is "_~=?z_hbd")
    assume z_Hij:"((((state[?z_hbd])[?z_hbd])[''maxBal''])~=?z_hel)" (is "?z_hik~=_")
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vla. (?z_hik~=zenon_Vla))" "Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))" "p" "b" "?z_hbd", OF z_Hij])
     assume z_Hem:"?z_hem"
     assume z_Hby:"(p=?z_hbd)"
     assume z_Hio:"(?z_hik~=b)"
     show FALSE
     by (rule notE [OF z_Hgg z_Hby])
    next
     assume z_Hem:"?z_hem"
     assume z_Hgg:"(p~=?z_hbd)"
     assume z_Hip:"(?z_hik~=(Fcn(Participant, (\<lambda>p_1. (((state[p_1])[p_1])[''maxBal''])))[?z_hbd]))" (is "_~=?z_hgi")
     show FALSE
     proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vla. (?z_hik~=zenon_Vla))" "Participant" "(\<lambda>p_1. (((state[p_1])[p_1])[''maxBal'']))" "?z_hbd", OF z_Hip])
      assume z_Hev:"(~?z_heq)"
      show FALSE
      by (rule notE [OF z_Hev z_Heq])
     next
      assume z_Hiq:"(?z_hik~=?z_hik)"
      show FALSE
      by (rule zenon_noteq [OF z_Hiq])
     qed
    next
     assume z_Hgj:"(~?z_hem)"
     show FALSE
     by (rule notE [OF z_Hgj z_Hem])
    qed
   next
    assume z_Hir:"(~?z_her)"
    show FALSE
    by (rule notE [OF z_Hir z_Her])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 16"; *} qed
end

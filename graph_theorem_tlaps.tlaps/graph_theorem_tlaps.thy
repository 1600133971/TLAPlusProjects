(* automatically generated -- do not edit manually *)
theory graph_theorem_tlaps imports Constant Zenon begin
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

lemma ob'1:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
shows "(\<forall>Nodes : ((\<forall> m \<in> (Nodes) : (\<forall> n \<in> (Nodes) : ((({(m), (n)}) \<in> (setOfAll((((Nodes) \<times> (Nodes))), %m_1. ({(fapply ((m_1), ((Succ[0])))), (fapply ((m_1), ((Succ[Succ[0]]))))}))))))) & (\<forall> e \<in> (setOfAll((((Nodes) \<times> (Nodes))), %m. ({(fapply ((m), ((Succ[0])))), (fapply ((m), ((Succ[Succ[0]]))))}))) : (\<exists> m \<in> (Nodes) : (\<exists> n \<in> (Nodes) : (((e) = ({(m), (n)}))))))))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"
using assms by force
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
lemma ob'37:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
(* usable definition Edges suppressed *)
(* usable definition NonLoopEdges suppressed *)
(* usable definition SimpleGraphs suppressed *)
(* usable definition Degree suppressed *)
fixes Nodes
assumes v'49: "((IsFiniteSet ((Nodes))))"
assumes v'50: "((greater (((Cardinality ((Nodes)))), ((Succ[0])))))"
fixes G
assumes G_in : "(G \<in> ((SimpleGraphs ((Nodes)))))"
assumes v'70: "((\<And> S :: c. (((IsFiniteSet ((S)))) \<Longrightarrow> (((greater (((Cardinality ((S)))), ((Succ[0]))))) \<Longrightarrow> (\<exists> x \<in> (S) : (\<exists> y \<in> (S) : (((x) \<noteq> (y)))))))))"
assumes v'71: "((IsFiniteSet ((subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0)))))))))"
assumes v'72: "((greater (((Cardinality ((subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0))))))))), ((Succ[0])))))"
shows "(\<exists> x \<in> (subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0)))))) : (\<exists> y \<in> (subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0)))))) : (((x) \<noteq> (y)))))"(is "PROP ?ob'37")
proof -
ML_command {* writeln "*** TLAPS ENTER 37"; *}
show "PROP ?ob'37"
using assms by blast
ML_command {* writeln "*** TLAPS EXIT 37"; *} qed
lemma ob'109:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
(* usable definition Edges suppressed *)
(* usable definition NonLoopEdges suppressed *)
(* usable definition SimpleGraphs suppressed *)
(* usable definition Degree suppressed *)
fixes Nodes
assumes v'49: "((IsFiniteSet ((Nodes))))"
assumes v'50: "((greater (((Cardinality ((Nodes)))), ((Succ[0])))))"
fixes G
assumes G_in : "(G \<in> ((SimpleGraphs ((Nodes)))))"
fixes e
assumes e_in : "(e \<in> (G))"
fixes n
assumes n_in : "(n \<in> (e))"
assumes v'74: "(((e) \<in> ((Edges ((Nodes))))))"
assumes v'75: "((((Cardinality ((e)))) = ((Succ[Succ[0]]))))"
assumes v'76: "(\<forall>Nodes_1 : ((\<forall> m \<in> (Nodes_1) : (\<forall> n_1 \<in> (Nodes_1) : ((({(m), (n_1)}) \<in> ((Edges ((Nodes_1)))))))) & (\<forall> e_1 \<in> ((Edges ((Nodes_1)))) : (\<exists> m \<in> (Nodes_1) : (\<exists> n_1 \<in> (Nodes_1) : (((e_1) = ({(m), (n_1)}))))))))"
shows "(\<exists> m \<in> (Nodes) : (\<exists> p \<in> (Nodes) : (((e) = ({(m), (p)})))))"(is "PROP ?ob'109")
proof -
ML_command {* writeln "*** TLAPS ENTER 109"; *}
show "PROP ?ob'109"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 109"; *} qed
lemma ob'89:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
(* usable definition Edges suppressed *)
(* usable definition NonLoopEdges suppressed *)
(* usable definition SimpleGraphs suppressed *)
(* usable definition Degree suppressed *)
fixes Nodes
assumes v'49: "((IsFiniteSet ((Nodes))))"
assumes v'50: "((greater (((Cardinality ((Nodes)))), ((Succ[0])))))"
fixes G
assumes G_in : "(G \<in> ((SimpleGraphs ((Nodes)))))"
assumes v'71: "((((Edges ((Nodes)))) \<subseteq> ((SUBSET (Nodes)))))"
assumes v'72: "(\<forall>S : ((((IsFiniteSet ((S)))) \<Rightarrow> ((IsFiniteSet (((SUBSET (S)))))))))"
assumes v'73: "((\<And> S :: c. (\<And> TT :: c. (((IsFiniteSet ((TT)))) \<Longrightarrow> ((((S) \<subseteq> (TT))) \<Longrightarrow> (((IsFiniteSet ((S)))) & ((leq (((Cardinality ((S)))), ((Cardinality ((TT)))))))))))))"
shows "((IsFiniteSet (((Edges ((Nodes)))))))"(is "PROP ?ob'89")
proof -
ML_command {* writeln "*** TLAPS ENTER 89"; *}
show "PROP ?ob'89"

(* BEGIN ZENON INPUT
;; file=graph_theorem_tlaps.tlaps/tlapm_4631dd.znn; winfile="`cygpath -a -w "graph_theorem_tlaps.tlaps/tlapm_4631dd.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >graph_theorem_tlaps.tlaps/tlapm_4631dd.znn.out
;; obligation #89
$hyp "v'49" (IsFiniteSet Nodes)
$hyp "v'50" (arith.lt (TLA.fapply TLA.Succ 0)
(Cardinality Nodes))
$hyp "G_in" (TLA.in G (SimpleGraphs Nodes))
$hyp "v'71" (TLA.subseteq (Edges Nodes)
(TLA.SUBSET Nodes))
$hyp "v'72" (A. ((S) (=> (IsFiniteSet S)
(IsFiniteSet (TLA.SUBSET S)))))
$hyp "v'73" (A. ((S) (A. ((TT) (=> (IsFiniteSet TT) (=> (TLA.subseteq S
TT) (/\ (IsFiniteSet S) (arith.le (Cardinality S)
(Cardinality TT)))))))))
$goal (IsFiniteSet (Edges Nodes))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(\\A S:(\\A TT:(IsFiniteSet(TT)=>((S \\subseteq TT)=>(IsFiniteSet(S)&(Cardinality(S) <= Cardinality(TT)))))))" (is "\\A x : ?z_ht(x)")
 using v'73 by blast
 have z_Hd:"(Edges(Nodes) \\subseteq SUBSET(Nodes))" (is "?z_hd")
 using v'71 by blast
 have z_Ha:"IsFiniteSet(Nodes)" (is "?z_ha")
 using v'49 by blast
 have z_He:"(\\A S:(IsFiniteSet(S)=>IsFiniteSet(SUBSET(S))))" (is "\\A x : ?z_hba(x)")
 using v'72 by blast
 assume z_Hg:"(~IsFiniteSet(Edges(Nodes)))" (is "~?z_hbb")
 have z_Hbc: "?z_ht(Edges(Nodes))" (is "\\A x : ?z_hbd(x)")
 by (rule zenon_all_0 [of "?z_ht" "Edges(Nodes)", OF z_Hf])
 have z_Hbe: "?z_hbd(SUBSET(Nodes))" (is "?z_hbf=>?z_hbg")
 by (rule zenon_all_0 [of "?z_hbd" "SUBSET(Nodes)", OF z_Hbc])
 show FALSE
 proof (rule zenon_imply [OF z_Hbe])
  assume z_Hbh:"(~?z_hbf)"
  have z_Hbi: "?z_hba(Nodes)"
  by (rule zenon_all_0 [of "?z_hba" "Nodes", OF z_He])
  show FALSE
  proof (rule zenon_imply [OF z_Hbi])
   assume z_Hbj:"(~?z_ha)"
   show FALSE
   by (rule notE [OF z_Hbj z_Ha])
  next
   assume z_Hbf:"?z_hbf"
   show FALSE
   by (rule notE [OF z_Hbh z_Hbf])
  qed
 next
  assume z_Hbg:"?z_hbg" (is "_=>?z_hbk")
  show FALSE
  proof (rule zenon_imply [OF z_Hbg])
   assume z_Hbl:"(~?z_hd)"
   show FALSE
   by (rule notE [OF z_Hbl z_Hd])
  next
   assume z_Hbk:"?z_hbk" (is "_&?z_hbm")
   have z_Hbb: "?z_hbb"
   by (rule zenon_and_0 [OF z_Hbk])
   show FALSE
   by (rule notE [OF z_Hg z_Hbb])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 89"; *} qed
lemma ob'133:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
(* usable definition Edges suppressed *)
(* usable definition NonLoopEdges suppressed *)
(* usable definition SimpleGraphs suppressed *)
(* usable definition Degree suppressed *)
fixes Nodes
assumes v'49: "((IsFiniteSet ((Nodes))))"
assumes v'50: "((greater (((Cardinality ((Nodes)))), ((Succ[0])))))"
fixes G
assumes G_in : "(G \<in> ((SimpleGraphs ((Nodes)))))"
fixes n
assumes n_in : "(n \<in> (((Nodes) \\ (subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0)))))))))"
assumes v'77: "(((setOfAll((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)}))), %m. ({(m), (n)}))) \<subseteq> ((SUBSET (Nodes)))))"
assumes v'78: "(\<forall>S : ((((IsFiniteSet ((S)))) \<Rightarrow> ((IsFiniteSet (((SUBSET (S)))))))))"
assumes v'79: "((\<And> S :: c. (\<And> TT :: c. (((IsFiniteSet ((TT)))) \<Longrightarrow> ((((S) \<subseteq> (TT))) \<Longrightarrow> (((IsFiniteSet ((S)))) & ((leq (((Cardinality ((S)))), ((Cardinality ((TT)))))))))))))"
assumes v'80: "(\<forall>S : ((((IsFiniteSet ((S)))) \<Rightarrow> ((((Cardinality ((S)))) \<in> (Nat))))))"
shows "((((IsFiniteSet ((setOfAll((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)}))), %m. ({(m), (n)})))))) \<and> ((((Cardinality ((setOfAll((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)}))), %m. ({(m), (n)})))))) \<in> (Nat)))))"(is "PROP ?ob'133")
proof -
ML_command {* writeln "*** TLAPS ENTER 133"; *}
show "PROP ?ob'133"

(* BEGIN ZENON INPUT
;; file=graph_theorem_tlaps.tlaps/tlapm_7d0ed6.znn; winfile="`cygpath -a -w "graph_theorem_tlaps.tlaps/tlapm_7d0ed6.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >graph_theorem_tlaps.tlaps/tlapm_7d0ed6.znn.out
;; obligation #133
$hyp "v'49" (IsFiniteSet Nodes)
$hyp "v'50" (arith.lt (TLA.fapply TLA.Succ 0)
(Cardinality Nodes))
$hyp "G_in" (TLA.in G (SimpleGraphs Nodes))
$hyp "n_in" (TLA.in n (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n) (= (Degree n G)
0)))))
$hyp "v'77" (TLA.subseteq (TLA.setOfAll (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0))))
(TLA.set n)) ((m) (TLA.set m n)))
(TLA.SUBSET Nodes))
$hyp "v'78" (A. ((S) (=> (IsFiniteSet S)
(IsFiniteSet (TLA.SUBSET S)))))
$hyp "v'79" (A. ((S) (A. ((TT) (=> (IsFiniteSet TT) (=> (TLA.subseteq S
TT) (/\ (IsFiniteSet S) (arith.le (Cardinality S)
(Cardinality TT)))))))))
$hyp "v'80" (A. ((S) (=> (IsFiniteSet S) (TLA.in (Cardinality S)
arith.N))))
$goal (/\ (IsFiniteSet (TLA.setOfAll (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0))))
(TLA.set n)) ((m) (TLA.set m n))))
(TLA.in (Cardinality (TLA.setOfAll (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0))))
(TLA.set n)) ((m) (TLA.set m n))))
arith.N))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hh:"(\\A S:(IsFiniteSet(S)=>(Cardinality(S) \\in Nat)))" (is "\\A x : ?z_hp(x)")
 using v'80 by blast
 have z_Hf:"(\\A S:(IsFiniteSet(S)=>IsFiniteSet(SUBSET(S))))" (is "\\A x : ?z_ht(x)")
 using v'78 by blast
 have z_Ha:"IsFiniteSet(Nodes)" (is "?z_ha")
 using v'49 by blast
 have z_He:"(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n})) \\subseteq SUBSET(Nodes))" (is "?z_he")
 using v'77 by blast
 have z_Hg:"(\\A S:(\\A TT:(IsFiniteSet(TT)=>((S \\subseteq TT)=>(IsFiniteSet(S)&(Cardinality(S) <= Cardinality(TT)))))))" (is "\\A x : ?z_hbt(x)")
 using v'79 by blast
 have zenon_L1_: "(\\A S:(\\A TT:(IsFiniteSet(TT)=>((S \\subseteq TT)=>(IsFiniteSet(S)&(Cardinality(S) <= Cardinality(TT))))))) ==> (~IsFiniteSet(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n})))) ==> ?z_he ==> ?z_ha ==> (\\A S:(IsFiniteSet(S)=>IsFiniteSet(SUBSET(S)))) ==> FALSE" (is "?z_hg ==> ?z_hbu ==> _ ==> _ ==> ?z_hf ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hbu:"?z_hbu" (is "~?z_hbv")
  assume z_He:"?z_he"
  assume z_Ha:"?z_ha"
  assume z_Hf:"?z_hf"
  have z_Hbw: "?z_hbt(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n})))" (is "\\A x : ?z_hbx(x)")
  by (rule zenon_all_0 [of "?z_hbt" "setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n}))", OF z_Hg])
  have z_Hby: "?z_hbx(SUBSET(Nodes))" (is "?z_hbz=>?z_hca")
  by (rule zenon_all_0 [of "?z_hbx" "SUBSET(Nodes)", OF z_Hbw])
  show FALSE
  proof (rule zenon_imply [OF z_Hby])
   assume z_Hcb:"(~?z_hbz)"
   have z_Hcc: "?z_ht(Nodes)"
   by (rule zenon_all_0 [of "?z_ht" "Nodes", OF z_Hf])
   show FALSE
   proof (rule zenon_imply [OF z_Hcc])
    assume z_Hcd:"(~?z_ha)"
    show FALSE
    by (rule notE [OF z_Hcd z_Ha])
   next
    assume z_Hbz:"?z_hbz"
    show FALSE
    by (rule notE [OF z_Hcb z_Hbz])
   qed
  next
   assume z_Hca:"?z_hca" (is "_=>?z_hce")
   show FALSE
   proof (rule zenon_imply [OF z_Hca])
    assume z_Hcf:"(~?z_he)"
    show FALSE
    by (rule notE [OF z_Hcf z_He])
   next
    assume z_Hce:"?z_hce" (is "_&?z_hcg")
    have z_Hbv: "?z_hbv"
    by (rule zenon_and_0 [OF z_Hce])
    show FALSE
    by (rule notE [OF z_Hbu z_Hbv])
   qed
  qed
 qed
 assume z_Hi:"(~(IsFiniteSet(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n})))&(Cardinality(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n}))) \\in Nat)))" (is "~(?z_hbv&?z_hci)")
 show FALSE
 proof (rule zenon_notand [OF z_Hi])
  assume z_Hbu:"(~?z_hbv)"
  show FALSE
  by (rule zenon_L1_ [OF z_Hg z_Hbu z_He z_Ha z_Hf])
 next
  assume z_Hck:"(~?z_hci)"
  have z_Hcl: "?z_hp(setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n})))"
  by (rule zenon_all_0 [of "?z_hp" "setOfAll(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}), (\<lambda>m. {m, n}))", OF z_Hh])
  show FALSE
  proof (rule zenon_imply [OF z_Hcl])
   assume z_Hbu:"(~?z_hbv)"
   show FALSE
   by (rule zenon_L1_ [OF z_Hg z_Hbu z_He z_Ha z_Hf])
  next
   assume z_Hci:"?z_hci"
   show FALSE
   by (rule notE [OF z_Hck z_Hci])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 133"; *} qed
lemma ob'154:
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsBijection suppressed *)
(* usable definition IsFiniteSet suppressed *)
fixes Cardinality
(* usable definition Edges suppressed *)
(* usable definition NonLoopEdges suppressed *)
(* usable definition SimpleGraphs suppressed *)
(* usable definition Degree suppressed *)
fixes Nodes
assumes v'49: "((IsFiniteSet ((Nodes))))"
assumes v'50: "((greater (((Cardinality ((Nodes)))), ((Succ[0])))))"
fixes G
assumes G_in : "(G \<in> ((SimpleGraphs ((Nodes)))))"
fixes n
assumes n_in : "(n \<in> (((Nodes) \\ (subsetOf((Nodes), %n. ((((Degree ((n), (G)))) = ((0)))))))))"
assumes v'75: "(((IsFiniteSet ((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)})))))) & ((((Cardinality ((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)})))))) \<in> (Nat))) & ((less (((Cardinality ((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)})))))), ((Cardinality ((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))))))))))"
assumes v'76: "(\<forall>S : ((((IsFiniteSet ((S)))) \<Rightarrow> (\<forall>n_1 : (((((n_1) = ((Cardinality ((S)))))) \<Leftrightarrow> (((((n_1) \<in> (Nat))) \<and> (\<exists>f : ((IsBijection ((f), ((isa_peri_peri_a (((Succ[0])), (n_1)))), (S)))))))))))))"
shows "(\<exists>f : ((IsBijection ((f), ((isa_peri_peri_a (((Succ[0])), ((Cardinality ((((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)}))))))))), (((((Nodes) \\ (subsetOf((Nodes), %n_1. ((((Degree ((n_1), (G)))) = ((0)))))))) \\ ({(n)})))))))"(is "PROP ?ob'154")
proof -
ML_command {* writeln "*** TLAPS ENTER 154"; *}
show "PROP ?ob'154"

(* BEGIN ZENON INPUT
;; file=graph_theorem_tlaps.tlaps/tlapm_929047.znn; winfile="`cygpath -a -w "graph_theorem_tlaps.tlaps/tlapm_929047.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >graph_theorem_tlaps.tlaps/tlapm_929047.znn.out
;; obligation #154
$hyp "v'49" (IsFiniteSet Nodes)
$hyp "v'50" (arith.lt (TLA.fapply TLA.Succ 0)
(Cardinality Nodes))
$hyp "G_in" (TLA.in G (SimpleGraphs Nodes))
$hyp "n_in" (TLA.in n (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n) (= (Degree n G)
0)))))
$hyp "v'75" (/\ (IsFiniteSet (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0)))) (TLA.set n)))
(TLA.in (Cardinality (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0)))) (TLA.set n))) arith.N)
(arith.lt (Cardinality (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0)))) (TLA.set n)))
(Cardinality (TLA.setminus Nodes (TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G)
0)))))))
$hyp "v'76" (A. ((S) (=> (IsFiniteSet S) (A. ((n_1) (<=> (= n_1
(Cardinality S)) (/\ (TLA.in n_1 arith.N) (E. ((f) (IsBijection f
(arith.intrange (TLA.fapply TLA.Succ 0) n_1)
S))))))))))
$goal (E. ((f) (IsBijection f (arith.intrange (TLA.fapply TLA.Succ 0)
(Cardinality (TLA.setminus (TLA.setminus Nodes
(TLA.subsetOf Nodes ((n_1) (= (Degree n_1 G) 0)))) (TLA.set n))))
(TLA.setminus (TLA.setminus Nodes (TLA.subsetOf Nodes ((n_1) (= (Degree n_1
G) 0))))
(TLA.set n)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_He:"(IsFiniteSet(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))&((Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n})) \\in Nat)&(Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n})) < Cardinality((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0))))))))" (is "?z_hh&?z_ht")
 using v'75 by blast
 have z_Hf:"(\\A S:(IsFiniteSet(S)=>(\\A n_1:((n_1=Cardinality(S))<=>((n_1 \\in Nat)&(\\E f:IsBijection(f, isa'dotdot(1, n_1), S)))))))" (is "\\A x : ?z_hbo(x)")
 using v'76 by blast
 assume z_Hg:"(~(\\E f:IsBijection(f, isa'dotdot(1, Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))), ((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))))" (is "~(\\E x : ?z_hbs(x))")
 have z_Hh: "?z_hh"
 by (rule zenon_and_0 [OF z_He])
 have z_Hbt: "?z_hbo(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))" (is "_=>?z_hbu")
 by (rule zenon_all_0 [of "?z_hbo" "((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n})", OF z_Hf])
 show FALSE
 proof (rule zenon_imply [OF z_Hbt])
  assume z_Hbv:"(~?z_hh)"
  show FALSE
  by (rule notE [OF z_Hbv z_Hh])
 next
  assume z_Hbu:"?z_hbu" (is "\\A x : ?z_hbw(x)")
  have z_Hbx: "?z_hbw(Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n})))" (is "?z_hby<=>?z_hbz")
  by (rule zenon_all_0 [of "?z_hbw" "Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))", OF z_Hbu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hbx])
   assume z_Hca:"(Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n}))~=Cardinality(((Nodes \\ subsetOf(Nodes, (\<lambda>n. (Degree(n, G)=0)))) \\ {n})))" (is "?z_hv~=_")
   assume z_Hcb:"(~?z_hbz)" (is "~(?z_hu&?z_hbp)")
   show FALSE
   by (rule zenon_noteq [OF z_Hca])
  next
   assume z_Hby:"?z_hby" (is "?z_hv=_")
   assume z_Hbz:"?z_hbz" (is "?z_hu&?z_hbp")
   have z_Hbp: "?z_hbp"
   by (rule zenon_and_1 [OF z_Hbz])
   show FALSE
   by (rule notE [OF z_Hg z_Hbp])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 154"; *} qed
end

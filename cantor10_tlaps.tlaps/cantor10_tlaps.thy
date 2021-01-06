(* automatically generated -- do not edit manually *)
theory cantor10_tlaps imports Constant Zenon begin
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
fixes S
assumes v'2: "(\<forall>x : (((x) \<in> (S))))"
assumes v'5: "((\<And> A :: c. A \<in> ((SUBSET (S))) \<Longrightarrow> (\<exists> x \<in> (S) : (((fapply (([ x_1 \<in> (S)  \<mapsto> (x_1)]), (x))) = (A))))))"
assumes v'6: "(\<forall>S_1 : (\<forall>f : (\<exists> A \<in> ((SUBSET (S_1))) : (\<forall> x \<in> (S_1) : (((fapply ((f), (x))) \<noteq> (A)))))))"
shows "(FALSE)"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=cantor10_tlaps.tlaps/tlapm_7248ea.znn; winfile="`cygpath -a -w "cantor10_tlaps.tlaps/tlapm_7248ea.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >cantor10_tlaps.tlaps/tlapm_7248ea.znn.out
;; obligation #1
$hyp "v'2" (A. ((x) (TLA.in x
S)))
$hyp "v'5" (TLA.bAll (TLA.SUBSET S) ((A) (TLA.bEx S ((x) (= (TLA.fapply (TLA.Fcn S ((x_1) x_1)) x)
A)))))
$hyp "v'6" (A. ((S_1) (A. ((f) (TLA.bEx (TLA.SUBSET S_1) ((A) (TLA.bAll S_1 ((x) (-. (= (TLA.fapply f x)
A))))))))))
$goal F.
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hc:"(\\A S_1:(\\A f:bEx(SUBSET(S_1), (\<lambda>A. bAll(S_1, (\<lambda>x. ((f[x])~=A)))))))" (is "\\A x : ?z_hq(x)")
 using v'6 by blast
 have z_Ha:"(\\A x:(x \\in S))" (is "\\A x : ?z_ht(x)")
 using v'2 by blast
 have zenon_L1_: "(\\A x:(x \\in S)) ==> (~((CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x))))) \\in S)) ==> FALSE" (is "?z_ha ==> ?z_hu ==> FALSE")
 proof -
  assume z_Ha:"?z_ha"
  assume z_Hu:"?z_hu" (is "~?z_hv")
  have z_Hv: "?z_ht((CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x))))))"
  by (rule zenon_all_0 [of "?z_ht" "(CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x)))))", OF z_Ha])
  show FALSE
  by (rule notE [OF z_Hu z_Hv])
 qed
 assume z_Hd:"(~FALSE)" (is "~?z_hbi")
 have z_Hbj: "?z_hq(S)" (is "\\A x : ?z_hbk(x)")
 by (rule zenon_all_0 [of "?z_hq" "S", OF z_Hc])
 have z_Hbl: "?z_hbk(Fcn(S, (\<lambda>x_1. x_1)))" (is "?z_hbl")
 by (rule zenon_all_0 [of "?z_hbk" "Fcn(S, (\<lambda>x_1. x_1))", OF z_Hbj])
 have z_Hbm_z_Hbl: "(\\E x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x))))) == ?z_hbl" (is "?z_hbm == _")
 by (unfold bEx_def)
 have z_Hbm: "?z_hbm" (is "\\E x : ?z_hbn(x)")
 by (unfold z_Hbm_z_Hbl, fact z_Hbl)
 have z_Hbo: "?z_hbn((CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x))))))" (is "?z_hbp&?z_hbq")
 by (rule zenon_ex_choose_0 [of "?z_hbn", OF z_Hbm])
 have z_Hbq: "?z_hbq"
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hbr_z_Hbq: "(\\A x:((x \\in S)=>((Fcn(S, (\<lambda>x_1. x_1))[x])~=(CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x)))))))) == ?z_hbq" (is "?z_hbr == _")
 by (unfold bAll_def)
 have z_Hbr: "?z_hbr" (is "\\A x : ?z_hbv(x)")
 by (unfold z_Hbr_z_Hbq, fact z_Hbq)
 have z_Hbw: "?z_hbv((CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x))))))" (is "?z_hv=>?z_hbx")
 by (rule zenon_all_0 [of "?z_hbv" "(CHOOSE x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vcc. ((Fcn(S, (\<lambda>x_1. x_1))[zenon_Vcc])~=x)))))", OF z_Hbr])
 show FALSE
 proof (rule zenon_imply [OF z_Hbw])
  assume z_Hu:"(~?z_hv)"
  show FALSE
  by (rule zenon_L1_ [OF z_Ha z_Hu])
 next
  assume z_Hbx:"?z_hbx" (is "?z_hby~=?z_hw")
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vtcb. (zenon_Vtcb~=?z_hw))" "S" "(\<lambda>x_1. x_1)" "?z_hw", OF z_Hbx])
   assume z_Hu:"(~?z_hv)"
   show FALSE
   by (rule zenon_L1_ [OF z_Ha z_Hu])
  next
   assume z_Hcc:"(?z_hw~=?z_hw)"
   show FALSE
   by (rule zenon_noteq [OF z_Hcc])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
end

(* automatically generated -- do not edit manually *)
theory cantor4_tlaps imports Constant Zenon begin
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

lemma ob'10:
fixes S
fixes f
assumes f_in : "(f \<in> ([(S) \<rightarrow> ((SUBSET (S)))]))"
assumes v'9: "((\<And> x :: c. x \<in> (S) \<Longrightarrow> (((fapply ((f), (x))) \<noteq> (subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z)))))))))))"
shows "(\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> (subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z))))))))))"(is "PROP ?ob'10")
proof -
ML_command {* writeln "*** TLAPS ENTER 10"; *}
show "PROP ?ob'10"

(* BEGIN ZENON INPUT
;; file=cantor4_tlaps.tlaps/tlapm_4556fa.znn; winfile="`cygpath -a -w "cantor4_tlaps.tlaps/tlapm_4556fa.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >cantor4_tlaps.tlaps/tlapm_4556fa.znn.out
;; obligation #10
$hyp "f_in" (TLA.in f (TLA.FuncSet S (TLA.SUBSET S)))
$hyp "v'9" (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
$goal (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hb:"bAll(S, (\<lambda>x. ((f[x])~=subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))))" (is "?z_hb")
 using v'9 by blast
 assume z_Hc:"(~?z_hb)"
 show FALSE
 by (rule notE [OF z_Hc z_Hb])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 10"; *} qed
lemma ob'1:
fixes S
fixes f
assumes f_in : "(f \<in> ([(S) \<rightarrow> ((SUBSET (S)))]))"
assumes v'9: "(\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> (subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z))))))))))"
shows "(\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> ((subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z)))))))))))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=cantor4_tlaps.tlaps/tlapm_89f70c.znn; winfile="`cygpath -a -w "cantor4_tlaps.tlaps/tlapm_89f70c.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >cantor4_tlaps.tlaps/tlapm_89f70c.znn.out
;; obligation #1
$hyp "f_in" (TLA.in f (TLA.FuncSet S (TLA.SUBSET S)))
$hyp "v'9" (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
$goal (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hb:"bAll(S, (\<lambda>x. ((f[x])~=subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))))" (is "?z_hb")
 using v'9 by blast
 assume z_Hc:"(~?z_hb)"
 show FALSE
 by (rule notE [OF z_Hc z_Hb])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
lemma ob'20:
fixes S
fixes f
assumes f_in : "(f \<in> ([(S) \<rightarrow> ((SUBSET (S)))]))"
assumes v'9: "(\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> ((subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z)))))))))))"
assumes v'10: "(((subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z))))))) \<in> ((SUBSET (S)))))"
shows "(\<exists> A \<in> ((SUBSET (S))) : (\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> (A)))))"(is "PROP ?ob'20")
proof -
ML_command {* writeln "*** TLAPS ENTER 20"; *}
show "PROP ?ob'20"

(* BEGIN ZENON INPUT
;; file=cantor4_tlaps.tlaps/tlapm_f9e2a6.znn; winfile="`cygpath -a -w "cantor4_tlaps.tlaps/tlapm_f9e2a6.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >cantor4_tlaps.tlaps/tlapm_f9e2a6.znn.out
;; obligation #20
$hyp "f_in" (TLA.in f (TLA.FuncSet S (TLA.SUBSET S)))
$hyp "v'9" (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
$hyp "v'10" (TLA.in (TLA.subsetOf S ((z) (-. (TLA.in z (TLA.fapply f z)))))
(TLA.SUBSET S))
$goal (TLA.bEx (TLA.SUBSET S) ((A) (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
A))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hb:"bAll(S, (\<lambda>x. ((f[x])~=subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))))" (is "?z_hb")
 using v'9 by blast
 have z_Hc:"(subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))) \\in SUBSET(S))" (is "?z_hc")
 using v'10 by blast
 assume z_Hd:"(~bEx(SUBSET(S), (\<lambda>A. bAll(S, (\<lambda>x. ((f[x])~=A))))))" (is "~?z_hr")
 have z_Hx_z_Hd: "(~(\\E x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vg. ((f[zenon_Vg])~=x)))))) == (~?z_hr)" (is "?z_hx == ?z_hd")
 by (unfold bEx_def)
 have z_Hx: "?z_hx" (is "~(\\E x : ?z_hbg(x))")
 by (unfold z_Hx_z_Hd, fact z_Hd)
 have z_Hbh: "~?z_hbg(subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))"
 by (rule zenon_notex_0 [of "?z_hbg" "subsetOf(S, (\<lambda>z. (~(z \\in (f[z])))))", OF z_Hx])
 show FALSE
 proof (rule zenon_notand [OF z_Hbh])
  assume z_Hbi:"(~?z_hc)"
  show FALSE
  by (rule notE [OF z_Hbi z_Hc])
 next
  assume z_Hbj:"(~?z_hb)"
  show FALSE
  by (rule notE [OF z_Hbj z_Hb])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 20"; *} qed
end

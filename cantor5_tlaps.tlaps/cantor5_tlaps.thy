(* automatically generated -- do not edit manually *)
theory cantor5_tlaps imports Constant Zenon begin
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

lemma ob'4:
fixes S
fixes f
assumes v'6: "(\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> ((subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z)))))))))))"
assumes v'7: "(((subsetOf((S), %z. (((z) \<notin> (fapply ((f), (z))))))) \<in> ((SUBSET (S)))))"
shows "(\<exists> A \<in> ((SUBSET (S))) : (\<forall> x \<in> (S) : (((fapply ((f), (x))) \<noteq> (A)))))"(is "PROP ?ob'4")
proof -
ML_command {* writeln "*** TLAPS ENTER 4"; *}
show "PROP ?ob'4"

(* BEGIN ZENON INPUT
;; file=cantor5_tlaps.tlaps/tlapm_04d732.znn; winfile="`cygpath -a -w "cantor5_tlaps.tlaps/tlapm_04d732.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >cantor5_tlaps.tlaps/tlapm_04d732.znn.out
;; obligation #4
$hyp "v'6" (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
(TLA.subsetOf S ((z) (-. (TLA.in z
(TLA.fapply f z)))))))))
$hyp "v'7" (TLA.in (TLA.subsetOf S ((z) (-. (TLA.in z (TLA.fapply f z)))))
(TLA.SUBSET S))
$goal (TLA.bEx (TLA.SUBSET S) ((A) (TLA.bAll S ((x) (-. (= (TLA.fapply f x)
A))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"bAll(S, (\<lambda>x. ((f[x])~=subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))))" (is "?z_ha")
 using v'6 by blast
 have z_Hb:"(subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))) \\in SUBSET(S))" (is "?z_hb")
 using v'7 by blast
 assume z_Hc:"(~bEx(SUBSET(S), (\<lambda>A. bAll(S, (\<lambda>x. ((f[x])~=A))))))" (is "~?z_hq")
 have z_Hw_z_Hc: "(~(\\E x:((x \\in SUBSET(S))&bAll(S, (\<lambda>zenon_Vg. ((f[zenon_Vg])~=x)))))) == (~?z_hq)" (is "?z_hw == ?z_hc")
 by (unfold bEx_def)
 have z_Hw: "?z_hw" (is "~(\\E x : ?z_hbf(x))")
 by (unfold z_Hw_z_Hc, fact z_Hc)
 have z_Hbg: "~?z_hbf(subsetOf(S, (\<lambda>z. (~(z \\in (f[z]))))))"
 by (rule zenon_notex_0 [of "?z_hbf" "subsetOf(S, (\<lambda>z. (~(z \\in (f[z])))))", OF z_Hw])
 show FALSE
 proof (rule zenon_notand [OF z_Hbg])
  assume z_Hbh:"(~?z_hb)"
  show FALSE
  by (rule notE [OF z_Hbh z_Hb])
 next
  assume z_Hbi:"(~?z_ha)"
  show FALSE
  by (rule notE [OF z_Hbi z_Ha])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 4"; *} qed
end

(* automatically generated -- do not edit manually *)
theory gcd_tlaps imports Constant Zenon begin
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
(* usable definition Divides suppressed *)
fixes m
assumes m_in : "(m \<in> (((Nat) \\ ({((0))}))))"
fixes n
assumes n_in : "(n \<in> (((Nat) \\ ({((0))}))))"
assumes v'5: "((greater ((n), (m))))"
assumes v'8: "(\<forall> i \<in> (Int) : ((((((Divides ((i), (m)))) \<and> ((Divides ((i), (n)))))) \<Leftrightarrow> ((((Divides ((i), (m)))) \<and> ((Divides ((i), ((arith_add ((n), ((minus ((m)))))))))))))))"
shows "(((bChoice((((subsetOf((Int), %p. ((Divides ((p), (m)))))) \<inter> (subsetOf((Int), %p. ((Divides ((p), (n)))))))), %i. (\<forall> j \<in> (((subsetOf((Int), %p. ((Divides ((p), (m)))))) \<inter> (subsetOf((Int), %p. ((Divides ((p), (n)))))))) : ((geq ((i), (j))))))) = (bChoice((((subsetOf((Int), %p. ((Divides ((p), (m)))))) \<inter> (subsetOf((Int), %p. ((Divides ((p), ((arith_add ((n), ((minus ((m)))))))))))))), %i. (\<forall> j \<in> (((subsetOf((Int), %p. ((Divides ((p), (m)))))) \<inter> (subsetOf((Int), %p. ((Divides ((p), ((arith_add ((n), ((minus ((m)))))))))))))) : ((geq ((i), (j)))))))))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=gcd_tlaps.tlaps/tlapm_9e506b.znn; winfile="`cygpath -a -w "gcd_tlaps.tlaps/tlapm_9e506b.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >gcd_tlaps.tlaps/tlapm_9e506b.znn.out
;; obligation #1
$hyp "m_in" (TLA.in m (TLA.setminus arith.N
(TLA.set 0)))
$hyp "n_in" (TLA.in n (TLA.setminus arith.N
(TLA.set 0)))
$hyp "v'5" (arith.lt m
n)
$hyp "v'8" (TLA.bAll arith.Z ((i) (<=> (/\ (Divides i m) (Divides i n))
(/\ (Divides i m) (Divides i (arith.add n
(arith.minus m)))))))
$goal (= (TLA.bChoice (TLA.cap (TLA.subsetOf arith.Z ((p) (Divides p m)))
(TLA.subsetOf arith.Z ((p) (Divides p
n)))) ((i) (TLA.bAll (TLA.cap (TLA.subsetOf arith.Z ((p) (Divides p m)))
(TLA.subsetOf arith.Z ((p) (Divides p n)))) ((j) (arith.le j i)))))
(TLA.bChoice (TLA.cap (TLA.subsetOf arith.Z ((p) (Divides p m)))
(TLA.subsetOf arith.Z ((p) (Divides p (arith.add n
(arith.minus m)))))) ((i) (TLA.bAll (TLA.cap (TLA.subsetOf arith.Z ((p) (Divides p
m))) (TLA.subsetOf arith.Z ((p) (Divides p (arith.add n
(arith.minus m)))))) ((j) (arith.le j
i))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hd:"bAll(Int, (\<lambda>i. ((Divides(i, m)&Divides(i, n))<=>(Divides(i, m)&Divides(i, (n +  -.(m)))))))" (is "?z_hd")
 using v'8 by blast
 assume z_He:"(bChoice((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>i. bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= i)))))~=bChoice((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>i. bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= i))))))" (is "?z_hs~=?z_hbg")
 have z_Hbn_z_Hd: "(\\A x:((x \\in Int)=>((Divides(x, m)&Divides(x, n))<=>(Divides(x, m)&Divides(x, (n +  -.(m))))))) == ?z_hd" (is "?z_hbn == _")
 by (unfold bAll_def)
 have z_Hbn: "?z_hbn" (is "\\A x : ?z_hbx(x)")
 by (unfold z_Hbn_z_Hd, fact z_Hd)
 have z_Hby_z_He: "((CHOOSE x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= x)))))~=?z_hbg) == (?z_hs~=?z_hbg)" (is "?z_hby == ?z_he")
 by (unfold bChoose_def)
 have z_Hby: "?z_hby" (is "?z_hbz~=_")
 by (unfold z_Hby_z_He, fact z_He)
 have z_Hcf_z_Hby: "(?z_hbz~=(CHOOSE x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= x)))))) == ?z_hby" (is "?z_hcf == _")
 by (unfold bChoose_def)
 have z_Hcf: "?z_hcf" (is "_~=?z_hcg")
 by (unfold z_Hcf_z_Hby, fact z_Hby)
 have z_Hck: "(\\E zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" (is "\\E x : ?z_hcw(x)")
 by (rule zenon_choose_diff_choose_0 [of "(\<lambda>x. ((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= x)))))" "(\<lambda>x. ((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= x)))))", OF z_Hcf])
 have z_Hcz: "?z_hcw((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))" (is "~(?z_hdb<=>?z_hdc)")
 by (rule zenon_ex_choose_0 [of "?z_hcw", OF z_Hck])
 show FALSE
 proof (rule zenon_notequiv [OF z_Hcz])
  assume z_Hdd:"(~?z_hdb)" (is "~(?z_hde&?z_hdf)")
  assume z_Hdc:"?z_hdc" (is "?z_hdg&?z_hdh")
  have z_Hdg: "?z_hdg"
  by (rule zenon_and_0 [OF z_Hdc])
  have z_Hdh: "?z_hdh"
  by (rule zenon_and_1 [OF z_Hdc])
  have z_Hdi: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, m))))" (is "?z_hdi")
  by (rule zenon_in_cap_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hdg])
  have z_Hdj: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m))))))" (is "?z_hdj")
  by (rule zenon_in_cap_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hdg])
  have z_Hdk: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in Int)" (is "?z_hdk")
  by (rule zenon_in_subsetof_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hdi])
  have z_Hdl: "Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), m)" (is "?z_hdl")
  by (rule zenon_in_subsetof_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hdi])
  have z_Hdk: "?z_hdk"
  by (rule zenon_in_subsetof_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hdj])
  have z_Hdm: "Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), (n +  -.(m)))" (is "?z_hdm")
  by (rule zenon_in_subsetof_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hdj])
  have z_Hdn_z_Hdh: "(\\A x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))) == ?z_hdh" (is "?z_hdn == _")
  by (unfold bAll_def)
  have z_Hdn: "?z_hdn" (is "\\A x : ?z_hdq(x)")
  by (unfold z_Hdn_z_Hdh, fact z_Hdh)
  show FALSE
  proof (rule zenon_notand [OF z_Hdd])
   assume z_Hdr:"(~?z_hde)"
   show FALSE
   proof (rule zenon_notin_cap [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Hdr])
    assume z_Hds:"(~?z_hdi)"
    show FALSE
    by (rule notE [OF z_Hds z_Hdi])
   next
    assume z_Hdt:"(~((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, n)))))" (is "~?z_hdu")
    show FALSE
    proof (rule zenon_notin_subsetof [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Hdt])
     assume z_Hdv:"(~?z_hdk)"
     show FALSE
     by (rule notE [OF z_Hdv z_Hdk])
    next
     assume z_Hdw:"(~Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), n))" (is "~?z_hdx")
     have z_Hdy: "?z_hbx((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))" (is "_=>?z_hdz")
     by (rule zenon_all_0 [of "?z_hbx" "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))", OF z_Hbn])
     show FALSE
     proof (rule zenon_imply [OF z_Hdy])
      assume z_Hdv:"(~?z_hdk)"
      show FALSE
      by (rule notE [OF z_Hdv z_Hdk])
     next
      assume z_Hdz:"?z_hdz" (is "?z_hea<=>?z_heb")
      show FALSE
      proof (rule zenon_equiv [OF z_Hdz])
       assume z_Hec:"(~?z_hea)"
       assume z_Hed:"(~?z_heb)"
       show FALSE
       proof (rule zenon_notand [OF z_Hed])
        assume z_Hee:"(~?z_hdl)"
        show FALSE
        by (rule notE [OF z_Hee z_Hdl])
       next
        assume z_Hef:"(~?z_hdm)"
        show FALSE
        by (rule notE [OF z_Hef z_Hdm])
       qed
      next
       assume z_Hea:"?z_hea"
       assume z_Heb:"?z_heb"
       have z_Hdx: "?z_hdx"
       by (rule zenon_and_1 [OF z_Hea])
       show FALSE
       by (rule notE [OF z_Hdw z_Hdx])
      qed
     qed
    qed
   qed
  next
   assume z_Heg:"(~?z_hdf)"
   have z_Heh_z_Heg: "(~(\\A x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) == (~?z_hdf)" (is "?z_heh == ?z_heg")
   by (unfold bAll_def)
   have z_Heh: "?z_heh" (is "~(\\A x : ?z_hek(x))")
   by (unfold z_Heh_z_Heg, fact z_Heg)
   have z_Hel: "(\\E x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" (is "\\E x : ?z_hen(x)")
   by (rule zenon_notallex_0 [of "?z_hek", OF z_Heh])
   have z_Heo: "?z_hen((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "~(?z_heq=>?z_her)")
   by (rule zenon_ex_choose_0 [of "?z_hen", OF z_Hel])
   have z_Heq: "?z_heq"
   by (rule zenon_notimply_0 [OF z_Heo])
   have z_Hes: "(~?z_her)"
   by (rule zenon_notimply_1 [OF z_Heo])
   have z_Het: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, m))))" (is "?z_het")
   by (rule zenon_in_cap_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Heq])
   have z_Heu: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, n))))" (is "?z_heu")
   by (rule zenon_in_cap_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Heq])
   have z_Hev: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in Int)" (is "?z_hev")
   by (rule zenon_in_subsetof_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Het])
   have z_Hew: "Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), m)" (is "?z_hew")
   by (rule zenon_in_subsetof_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Het])
   have z_Hev: "?z_hev"
   by (rule zenon_in_subsetof_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Heu])
   have z_Hex: "Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), n)" (is "?z_hex")
   by (rule zenon_in_subsetof_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Heu])
   have z_Hey: "?z_hdq((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "?z_hez=>_")
   by (rule zenon_all_0 [of "?z_hdq" "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))", OF z_Hdn])
   show FALSE
   proof (rule zenon_imply [OF z_Hey])
    assume z_Hfa:"(~?z_hez)"
    show FALSE
    proof (rule zenon_notin_cap [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hfa])
     assume z_Hfb:"(~?z_het)"
     show FALSE
     by (rule notE [OF z_Hfb z_Het])
    next
     assume z_Hfc:"(~((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))" (is "~?z_hfd")
     show FALSE
     proof (rule zenon_notin_subsetof [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hfc])
      assume z_Hfe:"(~?z_hev)"
      show FALSE
      by (rule notE [OF z_Hfe z_Hev])
     next
      assume z_Hff:"(~Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), (n +  -.(m))))" (is "~?z_hfg")
      have z_Hfh: "?z_hbx((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "_=>?z_hfi")
      by (rule zenon_all_0 [of "?z_hbx" "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))", OF z_Hbn])
      show FALSE
      proof (rule zenon_imply [OF z_Hfh])
       assume z_Hfe:"(~?z_hev)"
       show FALSE
       by (rule notE [OF z_Hfe z_Hev])
      next
       assume z_Hfi:"?z_hfi" (is "?z_hfj<=>?z_hfk")
       show FALSE
       proof (rule zenon_equiv [OF z_Hfi])
        assume z_Hfl:"(~?z_hfj)"
        assume z_Hfm:"(~?z_hfk)"
        show FALSE
        proof (rule zenon_notand [OF z_Hfl])
         assume z_Hfn:"(~?z_hew)"
         show FALSE
         by (rule notE [OF z_Hfn z_Hew])
        next
         assume z_Hfo:"(~?z_hex)"
         show FALSE
         by (rule notE [OF z_Hfo z_Hex])
        qed
       next
        assume z_Hfj:"?z_hfj"
        assume z_Hfk:"?z_hfk"
        have z_Hfg: "?z_hfg"
        by (rule zenon_and_1 [OF z_Hfk])
        show FALSE
        by (rule notE [OF z_Hff z_Hfg])
       qed
      qed
     qed
    qed
   next
    assume z_Her:"?z_her"
    show FALSE
    by (rule notE [OF z_Hes z_Her])
   qed
  qed
 next
  assume z_Hdb:"?z_hdb" (is "?z_hde&?z_hdf")
  assume z_Hfp:"(~?z_hdc)" (is "~(?z_hdg&?z_hdh)")
  have z_Hde: "?z_hde"
  by (rule zenon_and_0 [OF z_Hdb])
  have z_Hdf: "?z_hdf"
  by (rule zenon_and_1 [OF z_Hdb])
  have z_Hdi: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, m))))" (is "?z_hdi")
  by (rule zenon_in_cap_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Hde])
  have z_Hdu: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, n))))" (is "?z_hdu")
  by (rule zenon_in_cap_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Hde])
  have z_Hdk: "((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in Int)" (is "?z_hdk")
  by (rule zenon_in_subsetof_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hdi])
  have z_Hdl: "Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), m)" (is "?z_hdl")
  by (rule zenon_in_subsetof_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hdi])
  have z_Hdk: "?z_hdk"
  by (rule zenon_in_subsetof_0 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Hdu])
  have z_Hdx: "Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), n)" (is "?z_hdx")
  by (rule zenon_in_subsetof_1 [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Hdu])
  have z_Hei_z_Hdf: "(\\A x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))) == ?z_hdf" (is "?z_hei == _")
  by (unfold bAll_def)
  have z_Hei: "?z_hei" (is "\\A x : ?z_hek(x)")
  by (unfold z_Hei_z_Hdf, fact z_Hdf)
  show FALSE
  proof (rule zenon_notand [OF z_Hfp])
   assume z_Hfq:"(~?z_hdg)"
   show FALSE
   proof (rule zenon_notin_cap [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hfq])
    assume z_Hds:"(~?z_hdi)"
    show FALSE
    by (rule notE [OF z_Hds z_Hdi])
   next
    assume z_Hfr:"(~((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))" (is "~?z_hdj")
    show FALSE
    proof (rule zenon_notin_subsetof [of "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hfr])
     assume z_Hdv:"(~?z_hdk)"
     show FALSE
     by (rule notE [OF z_Hdv z_Hdk])
    next
     assume z_Hef:"(~Divides((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))), (n +  -.(m))))" (is "~?z_hdm")
     have z_Hdy: "?z_hbx((CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))" (is "_=>?z_hdz")
     by (rule zenon_all_0 [of "?z_hbx" "(CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))", OF z_Hbn])
     show FALSE
     proof (rule zenon_imply [OF z_Hdy])
      assume z_Hdv:"(~?z_hdk)"
      show FALSE
      by (rule notE [OF z_Hdv z_Hdk])
     next
      assume z_Hdz:"?z_hdz" (is "?z_hea<=>?z_heb")
      show FALSE
      proof (rule zenon_equiv [OF z_Hdz])
       assume z_Hec:"(~?z_hea)"
       assume z_Hed:"(~?z_heb)"
       show FALSE
       proof (rule zenon_notand [OF z_Hec])
        assume z_Hee:"(~?z_hdl)"
        show FALSE
        by (rule notE [OF z_Hee z_Hdl])
       next
        assume z_Hdw:"(~?z_hdx)"
        show FALSE
        by (rule notE [OF z_Hdw z_Hdx])
       qed
      next
       assume z_Hea:"?z_hea"
       assume z_Heb:"?z_heb"
       have z_Hdm: "?z_hdm"
       by (rule zenon_and_1 [OF z_Heb])
       show FALSE
       by (rule notE [OF z_Hef z_Hdm])
      qed
     qed
    qed
   qed
  next
   assume z_Hfs:"(~?z_hdh)"
   have z_Hft_z_Hfs: "(~(\\A x:((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) == (~?z_hdh)" (is "?z_hft == ?z_hfs")
   by (unfold bAll_def)
   have z_Hft: "?z_hft" (is "~(\\A x : ?z_hdq(x))")
   by (unfold z_Hft_z_Hfs, fact z_Hfs)
   have z_Hfu: "(\\E x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" (is "\\E x : ?z_hfw(x)")
   by (rule zenon_notallex_0 [of "?z_hdq", OF z_Hft])
   have z_Hfx: "?z_hfw((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "~(?z_hfz=>?z_hga)")
   by (rule zenon_ex_choose_0 [of "?z_hfw", OF z_Hfu])
   have z_Hfz: "?z_hfz"
   by (rule zenon_notimply_0 [OF z_Hfx])
   have z_Hgb: "(~?z_hga)"
   by (rule zenon_notimply_1 [OF z_Hfx])
   have z_Hgc: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, m))))" (is "?z_hgc")
   by (rule zenon_in_cap_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hfz])
   have z_Hgd: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m))))))" (is "?z_hgd")
   by (rule zenon_in_cap_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))", OF z_Hfz])
   have z_Hge: "((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in Int)" (is "?z_hge")
   by (rule zenon_in_subsetof_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hgc])
   have z_Hgf: "Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), m)" (is "?z_hgf")
   by (rule zenon_in_subsetof_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, m))", OF z_Hgc])
   have z_Hge: "?z_hge"
   by (rule zenon_in_subsetof_0 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hgd])
   have z_Hgg: "Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), (n +  -.(m)))" (is "?z_hgg")
   by (rule zenon_in_subsetof_1 [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, (n +  -.(m))))", OF z_Hgd])
   have z_Hgh: "?z_hek((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "?z_hgi=>_")
   by (rule zenon_all_0 [of "?z_hek" "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))", OF z_Hei])
   show FALSE
   proof (rule zenon_imply [OF z_Hgh])
    assume z_Hgj:"(~?z_hgi)"
    show FALSE
    proof (rule zenon_notin_cap [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "subsetOf(Int, (\<lambda>p. Divides(p, m)))" "subsetOf(Int, (\<lambda>p. Divides(p, n)))", OF z_Hgj])
     assume z_Hgk:"(~?z_hgc)"
     show FALSE
     by (rule notE [OF z_Hgk z_Hgc])
    next
     assume z_Hgl:"(~((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))) \\in subsetOf(Int, (\<lambda>p. Divides(p, n)))))" (is "~?z_hgm")
     show FALSE
     proof (rule zenon_notin_subsetof [of "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))" "Int" "(\<lambda>p. Divides(p, n))", OF z_Hgl])
      assume z_Hgn:"(~?z_hge)"
      show FALSE
      by (rule notE [OF z_Hgn z_Hge])
     next
      assume z_Hgo:"(~Divides((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))), n))" (is "~?z_hgp")
      have z_Hgq: "?z_hbx((CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz))))))))))))" (is "_=>?z_hgr")
      by (rule zenon_all_0 [of "?z_hbx" "(CHOOSE x:(~((x \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))=>(x <= (CHOOSE zenon_Vz:(~(((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, n)))), (\<lambda>j. (j <= zenon_Vz))))<=>((zenon_Vz \\in (subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))))&bAll((subsetOf(Int, (\<lambda>p. Divides(p, m))) \\cap subsetOf(Int, (\<lambda>p. Divides(p, (n +  -.(m)))))), (\<lambda>j. (j <= zenon_Vz)))))))))))", OF z_Hbn])
      show FALSE
      proof (rule zenon_imply [OF z_Hgq])
       assume z_Hgn:"(~?z_hge)"
       show FALSE
       by (rule notE [OF z_Hgn z_Hge])
      next
       assume z_Hgr:"?z_hgr" (is "?z_hgs<=>?z_hgt")
       show FALSE
       proof (rule zenon_equiv [OF z_Hgr])
        assume z_Hgu:"(~?z_hgs)"
        assume z_Hgv:"(~?z_hgt)"
        show FALSE
        proof (rule zenon_notand [OF z_Hgv])
         assume z_Hgw:"(~?z_hgf)"
         show FALSE
         by (rule notE [OF z_Hgw z_Hgf])
        next
         assume z_Hgx:"(~?z_hgg)"
         show FALSE
         by (rule notE [OF z_Hgx z_Hgg])
        qed
       next
        assume z_Hgs:"?z_hgs"
        assume z_Hgt:"?z_hgt"
        have z_Hgp: "?z_hgp"
        by (rule zenon_and_1 [OF z_Hgs])
        show FALSE
        by (rule notE [OF z_Hgo z_Hgp])
       qed
      qed
     qed
    qed
   next
    assume z_Hga:"?z_hga"
    show FALSE
    by (rule notE [OF z_Hgb z_Hga])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
end

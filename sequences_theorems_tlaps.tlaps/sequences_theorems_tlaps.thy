(* automatically generated -- do not edit manually *)
theory sequences_theorems_tlaps imports Constant Zenon begin
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

lemma ob'15:
fixes S
fixes s
assumes s_in : "(s \<in> ((Seq ((S)))))"
fixes j
assumes j_in : "(j \<in> ((isa_peri_peri_a (((0)), ((Len ((s))))))))"
assumes v'17: "((((SubSeq ((s), ((Succ[0])), (j)))) = ([ i \<in> ((isa_peri_peri_a (((Succ[0])), (j))))  \<mapsto> (fapply ((s), (i)))])))"
assumes v'18: "(((j) \<in> (Nat)))"
assumes v'19: "(\<forall> i \<in> ((isa_peri_peri_a (((Succ[0])), (j)))) : (((fapply ((s), (i))) \<in> (S))))"
assumes v'20: "(\<forall>S_1 : ((((Seq ((S_1)))) = ((UNION (setOfAll((Nat), %n. ([((isa_peri_peri_a (((Succ[0])), (n)))) \<rightarrow> (S_1)]))))))))"
shows "((((SubSeq ((s), ((Succ[0])), (j)))) \<in> ((Seq ((S))))))"(is "PROP ?ob'15")
proof -
ML_command {* writeln "*** TLAPS ENTER 15"; *}
show "PROP ?ob'15"
using assms by force
ML_command {* writeln "*** TLAPS EXIT 15"; *} qed
end

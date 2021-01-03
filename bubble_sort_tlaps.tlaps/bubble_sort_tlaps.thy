(* automatically generated -- do not edit manually *)
theory bubble_sort_tlaps imports Constant Zenon begin
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
fixes N
(* usable definition Id suppressed *)
(* usable definition Exchange suppressed *)
fixes A A'
fixes a_A0a a_A0a'
fixes i i'
fixes j j'
fixes pc pc'
(* usable definition Init suppressed *)
(* usable definition Lbl_1 suppressed *)
(* usable definition Lbl_2 suppressed *)
(* usable definition Next suppressed *)
(* usable definition Spec suppressed *)
(* usable definition Termination suppressed *)
assumes v'25: "(((((N) \<in> (Nat))) \<and> ((geq ((N), ((Succ[0])))))))"
assumes v'29: "((((((((i) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & (((j) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & (((A) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & (((a_A0a) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & (((pc) \<in> ({(''Lbl_1''), (''Lbl_2''), (''Done'')})))) \<and> ((((((pc) = (''Lbl_1''))) \<Rightarrow> ((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (i)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (i)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))) & (((((pc) = (''Lbl_2''))) \<Rightarrow> ((((j) \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((i), ((Succ[0])))))))))) & ((less ((i), (N)))) & (\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a ((j), ((arith_add ((i), ((Succ[0])))))))) : (\<forall> q \<in> ((isa_peri_peri_a ((j), ((arith_add ((i), ((Succ[0])))))))) : ((((leq ((p), (q)))) \<Rightarrow> ((leq ((fapply ((A), (p))), (fapply ((A), (q)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((arith_add ((j), ((Succ[0]))))), ((arith_add ((i), ((Succ[0])))))))) : ((leq ((fapply ((A), (p))), (fapply ((A), (q)))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))) & (((((pc) = (''Done''))) \<Rightarrow> (((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) \<and> (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))))))) \<Longrightarrow> ((((a_Lblunde_1a) \<or> (a_Lblunde_2a))) \<Longrightarrow> (((((((a_ihash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & ((((a_jhash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & ((((a_Ahash_primea :: c)) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & ((((a_A0hash_primea :: c)) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & ((((a_pchash_primea :: c)) \<in> ({(''Lbl_1''), (''Lbl_2''), (''Done'')})))) \<and> (((((((a_pchash_primea :: c)) = (''Lbl_1''))) \<Rightarrow> ((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((a_ihash_primea :: c))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((a_ihash_primea :: c))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))]))))))) & ((((((a_pchash_primea :: c)) = (''Lbl_2''))) \<Rightarrow> (((((a_jhash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))))) & ((less (((a_ihash_primea :: c)), (N)))) & (\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((a_jhash_primea :: c)), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((a_jhash_primea :: c)), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : ((((leq ((p), (q)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (p))), (fapply (((a_Ahash_primea :: c)), (q)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((arith_add (((a_jhash_primea :: c)), ((Succ[0]))))), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : ((leq ((fapply (((a_Ahash_primea :: c)), (p))), (fapply (((a_Ahash_primea :: c)), (q)))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))]))))))) & ((((((a_pchash_primea :: c)) = (''Done''))) \<Rightarrow> (((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) \<and> (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))]))))))))))))))"
shows "((((((((((i) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & (((j) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & (((A) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & (((a_A0a) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & (((pc) \<in> ({(''Lbl_1''), (''Lbl_2''), (''Done'')})))) \<and> ((((((pc) = (''Lbl_1''))) \<Rightarrow> ((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (i)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (i)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))) & (((((pc) = (''Lbl_2''))) \<Rightarrow> ((((j) \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((i), ((Succ[0])))))))))) & ((less ((i), (N)))) & (\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a ((j), ((arith_add ((i), ((Succ[0])))))))) : (\<forall> q \<in> ((isa_peri_peri_a ((j), ((arith_add ((i), ((Succ[0])))))))) : ((((leq ((p), (q)))) \<Rightarrow> ((leq ((fapply ((A), (p))), (fapply ((A), (q)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add ((j), ((minus (((Succ[0]))))))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((arith_add ((j), ((Succ[0]))))), ((arith_add ((i), ((Succ[0])))))))) : ((leq ((fapply ((A), (p))), (fapply ((A), (q)))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))) & (((((pc) = (''Done''))) \<Rightarrow> (((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply ((A), (j_1))), (fapply ((A), (k)))))))))) \<and> (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : (((A) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply ((a_A0a), (fapply ((f), (i_1)))))]))))))))))) \<and> (((((a_Ahash_primea :: c)) = (A))) & ((((a_A0hash_primea :: c)) = (a_A0a))) & ((((a_ihash_primea :: c)) = (i))) & ((((a_jhash_primea :: c)) = (j))) & ((((a_pchash_primea :: c)) = (pc)))))) \<Rightarrow> (((((((a_ihash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & ((((a_jhash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), (N)))))) & ((((a_Ahash_primea :: c)) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & ((((a_A0hash_primea :: c)) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (Int)]))) & ((((a_pchash_primea :: c)) \<in> ({(''Lbl_1''), (''Lbl_2''), (''Done'')})))) \<and> (((((((a_pchash_primea :: c)) = (''Lbl_1''))) \<Rightarrow> ((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((a_ihash_primea :: c))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((a_ihash_primea :: c))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))]))))))) & ((((((a_pchash_primea :: c)) = (''Lbl_2''))) \<Rightarrow> (((((a_jhash_primea :: c)) \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))))) & ((less (((a_ihash_primea :: c)), (N)))) & (\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((a_jhash_primea :: c)), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((a_jhash_primea :: c)), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : ((((leq ((p), (q)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (p))), (fapply (((a_Ahash_primea :: c)), (q)))))))))) & (\<forall> p \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((a_jhash_primea :: c)), ((minus (((Succ[0]))))))))))) : (\<forall> q \<in> ((isa_peri_peri_a (((arith_add (((a_jhash_primea :: c)), ((Succ[0]))))), ((arith_add (((a_ihash_primea :: c)), ((Succ[0])))))))) : ((leq ((fapply (((a_Ahash_primea :: c)), (p))), (fapply (((a_Ahash_primea :: c)), (q)))))))) & (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))]))))))) & ((((((a_pchash_primea :: c)) = (''Done''))) \<Rightarrow> (((\<forall> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<forall> k \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : ((((leq ((j_1), (k)))) \<Rightarrow> ((leq ((fapply (((a_Ahash_primea :: c)), (j_1))), (fapply (((a_Ahash_primea :: c)), (k)))))))))) \<and> (\<exists> f \<in> (subsetOf(([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]), %f. (\<forall> i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (\<exists> j_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((fapply ((f), (i_1))) = (fapply ((f), (j_1))))))))) : ((((a_Ahash_primea :: c)) = ([ i_1 \<in> ((isa_peri_peri_a (((Succ[0])), (N))))  \<mapsto> (fapply (((a_A0hash_primea :: c)), (fapply ((f), (i_1)))))])))))))))))))"(is "PROP ?ob'16")
proof -
ML_command {* writeln "*** TLAPS ENTER 16"; *}
show "PROP ?ob'16"

(* BEGIN ZENON INPUT
;; file=bubble_sort_tlaps.tlaps/tlapm_9a850c.znn; winfile="`cygpath -a -w "bubble_sort_tlaps.tlaps/tlapm_9a850c.znn"`"; PATH='/usr/bin:/cygdrive/c/Program Files/Zulu/zulu-11/bin:/cygdrive/c/Program Files/Zulu/zulu-13/bin:/cygdrive/c/Program Files/Zulu/zulu-8/bin:/cygdrive/c/Program Files/Zulu/zulu-14/bin:/cygdrive/c/Program Files/Zulu/zulu-15/bin:/cygdrive/c/Program Files (x86)/Razer Chroma SDK/bin:/cygdrive/c/Program Files/Razer Chroma SDK/bin:/cygdrive/c/Program Files (x86)/Razer/ChromaBroadcast/bin:/cygdrive/c/Program Files/Razer/ChromaBroadcast/bin:/cygdrive/c/windows/system32:/cygdrive/c/windows:/cygdrive/c/windows/System32/Wbem:/cygdrive/c/windows/System32/WindowsPowerShell/v1.0:/cygdrive/c/windows/System32/OpenSSH:/cygdrive/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/cygdrive/c/windows/system32/config/systemprofile/AppData/Local/Microsoft/WindowsApps:/cygdrive/c/Program Files/Microsoft VS Code/bin:/cygdrive/c/Program Files (x86)/scala/2.13.2/bin:/cygdrive/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/cygdrive/c/Program Files/dotnet:/cygdrive/c/Program Files/nodejs:/cygdrive/c/Go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Microsoft/WindowsApps:/cygdrive/d/nodejs/npm:/cygdrive/c/Program Files/JetBrains/IntelliJ IDEA 2020.1/bin:/cygdrive/c/Users/Administrator/AppData/Local/GitHubDesktop/bin:/cygdrive/c/Python27:/cygdrive/c/Users/Administrator/AppData/Roaming/npm:/cygdrive/c/Users/Administrator/go/bin:/cygdrive/c/Users/Administrator/AppData/Local/Programs/MiKTeX/miktex/bin/x64:/usr/bin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >bubble_sort_tlaps.tlaps/tlapm_9a850c.znn.out
;; obligation #16
$hyp "v'25" (/\ (TLA.in N arith.N) (arith.le (TLA.fapply TLA.Succ 0)
N))
$hyp "v'29" (=> (/\ (/\ (TLA.in i (arith.intrange (TLA.fapply TLA.Succ 0) N))
(TLA.in j (arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in A
(TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) arith.Z))
(TLA.in a_A0a (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) arith.Z)) (TLA.in pc (TLA.set "Lbl_1" "Lbl_2" "Done"))) (/\ (=> (= pc
"Lbl_1") (/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
i) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
i) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply A j_1)
(TLA.fapply A k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1))))))))) (=> (= pc "Lbl_2")
(/\ (TLA.in j (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add i
(TLA.fapply TLA.Succ 0)))) (arith.lt i N)
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add j
(arith.minus (TLA.fapply TLA.Succ 0)))) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add j (arith.minus (TLA.fapply TLA.Succ 0)))) ((k) (=> (arith.le j_1
k) (arith.le (TLA.fapply A j_1) (TLA.fapply A k)))))))
(TLA.bAll (arith.intrange j (arith.add i
(TLA.fapply TLA.Succ 0))) ((p) (TLA.bAll (arith.intrange j (arith.add i
(TLA.fapply TLA.Succ 0))) ((q) (=> (arith.le p q) (arith.le (TLA.fapply A p)
(TLA.fapply A q))))))) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add j
(arith.minus (TLA.fapply TLA.Succ 0)))) ((p) (TLA.bAll (arith.intrange (arith.add j
(TLA.fapply TLA.Succ 0)) (arith.add i
(TLA.fapply TLA.Succ 0))) ((q) (arith.le (TLA.fapply A p)
(TLA.fapply A q))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1))))))))) (=> (= pc "Done")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply A j_1)
(TLA.fapply A k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1))))))))))) (=> (\/ a_Lblunde_1a
a_Lblunde_2a) (/\ (/\ (TLA.in a_ihash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in a_jhash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in a_Ahash_primea
(TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) arith.Z))
(TLA.in a_A0hash_primea (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) arith.Z)) (TLA.in a_pchash_primea (TLA.set "Lbl_1" "Lbl_2" "Done")))
(/\ (=> (= a_pchash_primea "Lbl_1")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
a_ihash_primea) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
a_ihash_primea) ((k) (=> (arith.le j_1 k)
(arith.le (TLA.fapply a_Ahash_primea j_1) (TLA.fapply a_Ahash_primea k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1)))))))))
(=> (= a_pchash_primea "Lbl_2") (/\ (TLA.in a_jhash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0)))) (arith.lt a_ihash_primea N)
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((k) (=> (arith.le j_1 k)
(arith.le (TLA.fapply a_Ahash_primea j_1) (TLA.fapply a_Ahash_primea k)))))))
(TLA.bAll (arith.intrange a_jhash_primea (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0))) ((p) (TLA.bAll (arith.intrange a_jhash_primea
(arith.add a_ihash_primea (TLA.fapply TLA.Succ 0))) ((q) (=> (arith.le p q)
(arith.le (TLA.fapply a_Ahash_primea p) (TLA.fapply a_Ahash_primea q)))))))
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((p) (TLA.bAll (arith.intrange (arith.add a_jhash_primea
(TLA.fapply TLA.Succ 0)) (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0))) ((q) (arith.le (TLA.fapply a_Ahash_primea p)
(TLA.fapply a_Ahash_primea q))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1)))))))))
(=> (= a_pchash_primea "Done")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply a_Ahash_primea j_1)
(TLA.fapply a_Ahash_primea k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1)))))))))))))
$goal (=> (/\ (/\ (/\ (TLA.in i (arith.intrange (TLA.fapply TLA.Succ 0) N))
(TLA.in j (arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in A
(TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) arith.Z))
(TLA.in a_A0a (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) arith.Z)) (TLA.in pc (TLA.set "Lbl_1" "Lbl_2" "Done"))) (/\ (=> (= pc
"Lbl_1") (/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
i) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
i) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply A j_1)
(TLA.fapply A k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1))))))))) (=> (= pc "Lbl_2")
(/\ (TLA.in j (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add i
(TLA.fapply TLA.Succ 0)))) (arith.lt i N)
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add j
(arith.minus (TLA.fapply TLA.Succ 0)))) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add j (arith.minus (TLA.fapply TLA.Succ 0)))) ((k) (=> (arith.le j_1
k) (arith.le (TLA.fapply A j_1) (TLA.fapply A k)))))))
(TLA.bAll (arith.intrange j (arith.add i
(TLA.fapply TLA.Succ 0))) ((p) (TLA.bAll (arith.intrange j (arith.add i
(TLA.fapply TLA.Succ 0))) ((q) (=> (arith.le p q) (arith.le (TLA.fapply A p)
(TLA.fapply A q))))))) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add j
(arith.minus (TLA.fapply TLA.Succ 0)))) ((p) (TLA.bAll (arith.intrange (arith.add j
(TLA.fapply TLA.Succ 0)) (arith.add i
(TLA.fapply TLA.Succ 0))) ((q) (arith.le (TLA.fapply A p)
(TLA.fapply A q))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1))))))))) (=> (= pc "Done")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply A j_1)
(TLA.fapply A k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1) (TLA.fapply f j_1)))))))) ((f) (= A
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0a (TLA.fapply f i_1)))))))))))
(/\ (= a_Ahash_primea A) (= a_A0hash_primea a_A0a) (= a_ihash_primea i)
(= a_jhash_primea j) (= a_pchash_primea pc))) (/\ (/\ (TLA.in a_ihash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in a_jhash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) N)) (TLA.in a_Ahash_primea
(TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) arith.Z))
(TLA.in a_A0hash_primea (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) arith.Z)) (TLA.in a_pchash_primea (TLA.set "Lbl_1" "Lbl_2" "Done")))
(/\ (=> (= a_pchash_primea "Lbl_1")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
a_ihash_primea) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
a_ihash_primea) ((k) (=> (arith.le j_1 k)
(arith.le (TLA.fapply a_Ahash_primea j_1) (TLA.fapply a_Ahash_primea k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1)))))))))
(=> (= a_pchash_primea "Lbl_2") (/\ (TLA.in a_jhash_primea
(arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0)))) (arith.lt a_ihash_primea N)
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
(arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((k) (=> (arith.le j_1 k)
(arith.le (TLA.fapply a_Ahash_primea j_1) (TLA.fapply a_Ahash_primea k)))))))
(TLA.bAll (arith.intrange a_jhash_primea (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0))) ((p) (TLA.bAll (arith.intrange a_jhash_primea
(arith.add a_ihash_primea (TLA.fapply TLA.Succ 0))) ((q) (=> (arith.le p q)
(arith.le (TLA.fapply a_Ahash_primea p) (TLA.fapply a_Ahash_primea q)))))))
(TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) (arith.add a_jhash_primea
(arith.minus (TLA.fapply TLA.Succ 0)))) ((p) (TLA.bAll (arith.intrange (arith.add a_jhash_primea
(TLA.fapply TLA.Succ 0)) (arith.add a_ihash_primea
(TLA.fapply TLA.Succ 0))) ((q) (arith.le (TLA.fapply a_Ahash_primea p)
(TLA.fapply a_Ahash_primea q))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1)))))))))
(=> (= a_pchash_primea "Done")
(/\ (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((k) (=> (arith.le j_1 k) (arith.le (TLA.fapply a_Ahash_primea j_1)
(TLA.fapply a_Ahash_primea k)))))))
(TLA.bEx (TLA.subsetOf (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) (arith.intrange (TLA.fapply TLA.Succ 0)
N)) ((f) (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.bEx (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((j_1) (= (TLA.fapply f i_1)
(TLA.fapply f j_1)))))))) ((f) (= a_Ahash_primea
(TLA.Fcn (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i_1) (TLA.fapply a_A0hash_primea (TLA.fapply f i_1))))))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have zenon_L1_: "(~(a_ihash_primea \\in isa'dotdot(1, N))) ==> (i \\in isa'dotdot(1, N)) ==> (a_ihash_primea=i) ==> FALSE" (is "?z_hd ==> ?z_hj ==> ?z_hl ==> FALSE")
 proof -
  assume z_Hd:"?z_hd" (is "~?z_he")
  assume z_Hj:"?z_hj"
  assume z_Hl:"?z_hl"
  show FALSE
  proof (rule notE [OF z_Hd])
   have z_Hm: "(i=a_ihash_primea)"
   by (rule sym [OF z_Hl])
   have z_He: "?z_he"
   by (rule subst [where P="(\<lambda>zenon_Vcjd. (zenon_Vcjd \\in isa'dotdot(1, N)))", OF z_Hm], fact z_Hj)
   thus "?z_he" .
  qed
 qed
 have zenon_L2_: "(~(a_jhash_primea \\in isa'dotdot(1, N))) ==> (j \\in isa'dotdot(1, N)) ==> (a_jhash_primea=j) ==> FALSE" (is "?z_hq ==> ?z_ht ==> ?z_hv ==> FALSE")
 proof -
  assume z_Hq:"?z_hq" (is "~?z_hr")
  assume z_Ht:"?z_ht"
  assume z_Hv:"?z_hv"
  show FALSE
  proof (rule notE [OF z_Hq])
   have z_Hw: "(j=a_jhash_primea)"
   by (rule sym [OF z_Hv])
   have z_Hr: "?z_hr"
   by (rule subst [where P="(\<lambda>zenon_Vcjd. (zenon_Vcjd \\in isa'dotdot(1, N)))", OF z_Hw], fact z_Ht)
   thus "?z_hr" .
  qed
 qed
 have zenon_L3_: "(~(a_Ahash_primea \\in FuncSet(isa'dotdot(1, N), Int))) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hx ==> ?z_hbc ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hx:"?z_hx" (is "~?z_hy")
  assume z_Hbc:"?z_hbc"
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule notE [OF z_Hx])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hy: "?z_hy"
   by (rule subst [where P="(\<lambda>zenon_Vejd. (zenon_Vejd \\in FuncSet(isa'dotdot(1, N), Int)))", OF z_Hbf], fact z_Hbc)
   thus "?z_hy" .
  qed
 qed
 have zenon_L4_: "(~(a_A0hash_primea \\in FuncSet(isa'dotdot(1, N), Int))) ==> (a_A0a \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_A0hash_primea=a_A0a) ==> FALSE" (is "?z_hbj ==> ?z_hbm ==> ?z_hbo ==> FALSE")
 proof -
  assume z_Hbj:"?z_hbj" (is "~?z_hbk")
  assume z_Hbm:"?z_hbm"
  assume z_Hbo:"?z_hbo"
  show FALSE
  proof (rule notE [OF z_Hbj])
   have z_Hbp: "(a_A0a=a_A0hash_primea)"
   by (rule sym [OF z_Hbo])
   have z_Hbk: "?z_hbk"
   by (rule subst [where P="(\<lambda>zenon_Vejd. (zenon_Vejd \\in FuncSet(isa'dotdot(1, N), Int)))", OF z_Hbp], fact z_Hbm)
   thus "?z_hbk" .
  qed
 qed
 have zenon_L5_: "(~(a_pchash_primea \\in {''Lbl_1'', ''Lbl_2'', ''Done''})) ==> (pc=''Lbl_1'') ==> (a_pchash_primea=pc) ==> FALSE" (is "?z_hbq ==> ?z_hbx ==> ?z_hbz ==> FALSE")
 proof -
  assume z_Hbq:"?z_hbq" (is "~?z_hbr")
  assume z_Hbx:"?z_hbx" (is "_=?z_hbu")
  assume z_Hbz:"?z_hbz"
  have z_Hca: "(a_pchash_primea~=?z_hbu)"
  by (rule zenon_notin_addElt_0 [of "a_pchash_primea" "?z_hbu" "{''Lbl_2'', ''Done''}", OF z_Hbq])
  show FALSE
  proof (rule notE [OF z_Hca])
   have z_Hcc: "(a_pchash_primea=?z_hbu)"
   by (rule subst [where P="(\<lambda>zenon_Vgjd. (a_pchash_primea=zenon_Vgjd))", OF z_Hbx], fact z_Hbz)
   thus "(a_pchash_primea=?z_hbu)" .
  qed
 qed
 have zenon_L6_: "(isa'dotdot(1, a_ihash_primea)~=isa'dotdot(1, i)) ==> (a_ihash_primea=i) ==> FALSE" (is "?z_hcg ==> ?z_hl ==> FALSE")
 proof -
  assume z_Hcg:"?z_hcg" (is "?z_hch~=?z_hci")
  assume z_Hl:"?z_hl"
  show FALSE
  proof (rule zenon_noteq [of "?z_hci"])
   have z_Hcj: "(?z_hci~=?z_hci)"
   by (rule subst [where P="(\<lambda>zenon_Vhjd. (isa'dotdot(1, zenon_Vhjd)~=?z_hci))", OF z_Hl], fact z_Hcg)
   thus "(?z_hci~=?z_hci)" .
  qed
 qed
 have zenon_L7_: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hco ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hco:"?z_hco" (is "?z_hcp~=?z_hdk")
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule zenon_noteq [of "?z_hdk"])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hdl: "(?z_hdk~=?z_hdk)"
   by (rule subst [where P="(\<lambda>zenon_Vijd. ((zenon_Vijd[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=?z_hdk))", OF z_Hbf], fact z_Hco)
   thus "(?z_hdk~=?z_hdk)" .
  qed
 qed
 have zenon_L8_: "(~((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))]))) ==> ((A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hdq ==> ?z_hds ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hdq:"?z_hdq" (is "~?z_hdr")
  assume z_Hds:"?z_hds"
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule notE [OF z_Hdq])
   have z_Hdu: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]))" (is "?z_hdt=?z_hdj")
   proof (rule zenon_nnpp [of "(?z_hdt=?z_hdj)"])
    assume z_Hdv:"(?z_hdt~=?z_hdj)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hdj"])
     have z_Hbf: "(A=a_Ahash_primea)"
     by (rule sym [OF z_Hbe])
     have z_Hdw: "(?z_hdj~=?z_hdj)"
     by (rule subst [where P="(\<lambda>zenon_Vjjd. ((zenon_Vjjd[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])~=?z_hdj))", OF z_Hbf], fact z_Hdv)
     thus "(?z_hdj~=?z_hdj)" .
    qed
   qed
   have z_Heb: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hdj <= (a_Ahash_primea[x]))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hdj <= (a_Ahash_primea[x]))))))]))" (is "?z_hcp=?z_hdk")
   proof (rule zenon_nnpp [of "(?z_hcp=?z_hdk)"])
    assume z_Hco:"(?z_hcp~=?z_hdk)"
    show FALSE
    by (rule zenon_L7_ [OF z_Hco z_Hbe])
   qed
   have z_Hec: "(?z_hdj <= ?z_hcp)" (is "?z_hec")
   by (rule subst [where P="(\<lambda>zenon_Vkjd. (zenon_Vkjd <= ?z_hcp))", OF z_Hdu], fact z_Hds)
   have z_Hdr: "?z_hdr"
   by (rule subst [where P="(\<lambda>zenon_Vljd. (?z_hdj <= zenon_Vljd))", OF z_Heb], fact z_Hec)
   thus "?z_hdr" .
  qed
 qed
 have zenon_L9_: "(A \\in FuncSet(isa'dotdot(1, N), Int)) ==> (~bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))) ==> ((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1]))))))))) ==> (a_Ahash_primea=A) ==> (a_A0hash_primea=a_A0a) ==> (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])])))) ==> FALSE" (is "?z_hbc ==> ?z_hej ==> ?z_hfd ==> ?z_hbe ==> ?z_hbo ==> ?z_hfm ==> FALSE")
 proof -
  assume z_Hbc:"?z_hbc"
  assume z_Hej:"?z_hej" (is "~?z_hek")
  assume z_Hfd:"?z_hfd"
  assume z_Hbe:"?z_hbe"
  assume z_Hbo:"?z_hbo"
  assume z_Hfm:"?z_hfm" (is "_=?z_hfn")
  have z_Hfr: "isAFcn(A)" (is "?z_hfr")
  by (rule zenon_in_funcset_0 [of "A" "isa'dotdot(1, N)" "Int", OF z_Hbc])
  have z_Hfs: "isAFcn(?z_hfn)" (is "?z_hfs")
  by (rule subst [where P="(\<lambda>zenon_Vzc. isAFcn(zenon_Vzc))", OF z_Hfm z_Hfr])
  have z_Hfw: "(a_Ahash_primea~=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))))" (is "_~=?z_hfx")
  by (rule zenon_notex_in_0 [of "subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1]))))))))" "(\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])])))))", OF z_Hej z_Hfd])
  show FALSE
  proof (rule notE [OF z_Hfw])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hga: "(?z_hfn=?z_hfx)"
   proof (rule zenon_nnpp [of "(?z_hfn=?z_hfx)"])
    assume z_Hgb:"(?z_hfn~=?z_hfx)"
    have z_Hgc: "(~(((?z_hfs&isAFcn(?z_hfx))&(DOMAIN(?z_hfn)=DOMAIN(?z_hfx)))&(\\A zenon_Vrf:((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf]))))))" (is "~(?z_hge&?z_hgk)")
    by (rule zenon_notfunequal_0 [of "?z_hfn" "?z_hfx", OF z_Hgb])
    show FALSE
    proof (rule zenon_notand [OF z_Hgc])
     assume z_Hgr:"(~?z_hge)" (is "~(?z_hgf&?z_hgh)")
     show FALSE
     proof (rule zenon_notand [OF z_Hgr])
      assume z_Hgs:"(~?z_hgf)" (is "~(_&?z_hgg)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgs])
       assume z_Hgt:"(~?z_hfs)"
       show FALSE
       by (rule notE [OF z_Hgt z_Hfs])
      next
       assume z_Hgu:"(~?z_hgg)"
       show FALSE
       by (rule zenon_notisafcn_fcn [of "isa'dotdot(1, N)" "(\<lambda>i_1. (a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))", OF z_Hgu])
      qed
     next
      assume z_Hgv:"(DOMAIN(?z_hfn)~=DOMAIN(?z_hfx))" (is "?z_hgi~=?z_hgj")
      have z_Hgw: "(isa'dotdot(1, N)~=?z_hgj)" (is "?z_hg~=_")
      by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vzq. (zenon_Vzq~=?z_hgj))" "?z_hg" "(\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(?z_hg, ?z_hg), (\<lambda>f. bAll(?z_hg, (\<lambda>i_1. bEx(?z_hg, (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(?z_hg, (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))", OF z_Hgv])
      have z_Hha: "(?z_hg~=?z_hg)"
      by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vbr. (?z_hg~=zenon_Vbr))" "?z_hg" "(\<lambda>i_1. (a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(?z_hg, ?z_hg), (\<lambda>f. bAll(?z_hg, (\<lambda>i_1. bEx(?z_hg, (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(?z_hg, (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))", OF z_Hgw])
      show FALSE
      by (rule zenon_noteq [OF z_Hha])
     qed
    next
     assume z_Hhe:"(~?z_hgk)" (is "~(\\A x : ?z_hhf(x))")
     have z_Hhg: "(\\E zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))" (is "\\E x : ?z_hhi(x)")
     by (rule zenon_notallex_0 [of "?z_hhf", OF z_Hhe])
     have z_Hhj: "?z_hhi((CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf]))))))" (is "~(?z_hhl=>?z_hhm)")
     by (rule zenon_ex_choose_0 [of "?z_hhi", OF z_Hhg])
     have z_Hhl: "?z_hhl"
     by (rule zenon_notimply_0 [OF z_Hhj])
     have z_Hhn: "((?z_hfn[(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))])~=(?z_hfx[(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))]))" (is "?z_hho~=?z_hhp")
     by (rule zenon_notimply_1 [OF z_Hhj])
     have z_Hhq: "((CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf]))))) \\in isa'dotdot(1, N))" (is "?z_hhq")
     by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vrq. ((CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf]))))) \\in zenon_Vrq))" "isa'dotdot(1, N)" "(\<lambda>i_1. (a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))", OF z_Hhl])
     show FALSE
     proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vpq. (zenon_Vpq~=?z_hhp))" "isa'dotdot(1, N)" "(\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))" "(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))", OF z_Hhn])
      assume z_Hhx:"(~?z_hhq)"
      show FALSE
      by (rule notE [OF z_Hhx z_Hhq])
     next
      assume z_Hhy:"((a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))])])~=?z_hhp)" (is "?z_hhz~=_")
      show FALSE
      proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vuq. (?z_hhz~=zenon_Vuq))" "isa'dotdot(1, N)" "(\<lambda>i_1. (a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])]))" "(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))", OF z_Hhy])
       assume z_Hhx:"(~?z_hhq)"
       show FALSE
       by (rule notE [OF z_Hhx z_Hhq])
      next
       assume z_Hie:"(?z_hhz~=(a_A0hash_primea[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))])]))" (is "_~=?z_hif")
       show FALSE
       proof (rule zenon_noteq [of "?z_hif"])
        have z_Hbp: "(a_A0a=a_A0hash_primea)"
        by (rule sym [OF z_Hbo])
        have z_Hig: "(?z_hif~=?z_hif)"
        by (rule subst [where P="(\<lambda>zenon_Vmjd. ((zenon_Vmjd[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[(CHOOSE zenon_Vrf:(~((zenon_Vrf \\in DOMAIN(?z_hfx))=>((?z_hfn[zenon_Vrf])=(?z_hfx[zenon_Vrf])))))])])~=?z_hif))", OF z_Hbp], fact z_Hie)
        thus "(?z_hif~=?z_hif)" .
       qed
      qed
     qed
    qed
   qed
   have z_Hil: "(a_Ahash_primea=?z_hfn)"
   by (rule subst [where P="(\<lambda>zenon_Vnjd. (zenon_Vnjd=?z_hfn))", OF z_Hbf], fact z_Hfm)
   have z_Hip: "(a_Ahash_primea=?z_hfx)"
   by (rule subst [where P="(\<lambda>zenon_Vojd. (a_Ahash_primea=zenon_Vojd))", OF z_Hga], fact z_Hil)
   thus "(a_Ahash_primea=?z_hfx)" .
  qed
 qed
 have zenon_L10_: "(~((a_pchash_primea=''Lbl_1'')=>(bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>j_1. bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))) ==> (\\A x:((x \\in isa'dotdot(1, i))=>bAll(isa'dotdot(1, i), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) ==> (a_ihash_primea=i) ==> (a_Ahash_primea=A) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> ((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1]))))))))) ==> (a_A0hash_primea=a_A0a) ==> (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])])))) ==> FALSE" (is "?z_hit ==> ?z_hje ==> ?z_hl ==> ?z_hbe ==> ?z_hbc ==> ?z_hfd ==> ?z_hbo ==> ?z_hfm ==> FALSE")
 proof -
  assume z_Hit:"?z_hit" (is "~(?z_hcc=>?z_hiv)")
  assume z_Hje:"?z_hje" (is "\\A x : ?z_hjn(x)")
  assume z_Hl:"?z_hl"
  assume z_Hbe:"?z_hbe"
  assume z_Hbc:"?z_hbc"
  assume z_Hfd:"?z_hfd"
  assume z_Hbo:"?z_hbo"
  assume z_Hfm:"?z_hfm" (is "_=?z_hfn")
  have z_Hjo: "(~?z_hiv)" (is "~(?z_hiw&?z_hek)")
  by (rule zenon_notimply_1 [OF z_Hit])
  show FALSE
  proof (rule zenon_notand [OF z_Hjo])
   assume z_Hjp:"(~?z_hiw)"
   have z_Hjq_z_Hjp: "(~(\\A x:((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) == (~?z_hiw)" (is "?z_hjq == ?z_hjp")
   by (unfold bAll_def)
   have z_Hjq: "?z_hjq" (is "~(\\A x : ?z_hjs(x))")
   by (unfold z_Hjq_z_Hjp, fact z_Hjp)
   have z_Hjt: "(\\E x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))" (is "\\E x : ?z_hju(x)")
   by (rule zenon_notallex_0 [of "?z_hjs", OF z_Hjq])
   have z_Hjv: "?z_hju((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "~(?z_hjw=>?z_hjx)")
   by (rule zenon_ex_choose_0 [of "?z_hju", OF z_Hjt])
   have z_Hjw: "?z_hjw"
   by (rule zenon_notimply_0 [OF z_Hjv])
   have z_Hjy: "(~?z_hjx)"
   by (rule zenon_notimply_1 [OF z_Hjv])
   have z_Hjz_z_Hjy: "(~(\\A x:((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) == (~?z_hjx)" (is "?z_hjz == ?z_hjy")
   by (unfold bAll_def)
   have z_Hjz: "?z_hjz" (is "~(\\A x : ?z_hkb(x))")
   by (unfold z_Hjz_z_Hjy, fact z_Hjy)
   have z_Hkc: "(\\E x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))" (is "\\E x : ?z_hkd(x)")
   by (rule zenon_notallex_0 [of "?z_hkb", OF z_Hjz])
   have z_Hke: "?z_hkd((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "~(?z_hkf=>?z_hkg)")
   by (rule zenon_ex_choose_0 [of "?z_hkd", OF z_Hkc])
   have z_Hkf: "?z_hkf"
   by (rule zenon_notimply_0 [OF z_Hke])
   have z_Hkh: "(~?z_hkg)" (is "~(?z_hki=>?z_hdr)")
   by (rule zenon_notimply_1 [OF z_Hke])
   have z_Hki: "?z_hki"
   by (rule zenon_notimply_0 [OF z_Hkh])
   have z_Hdq: "(~?z_hdr)"
   by (rule zenon_notimply_1 [OF z_Hkh])
   have z_Hkj: "?z_hjn((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "?z_hkk=>?z_hkl")
   by (rule zenon_all_0 [of "?z_hjn" "(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))", OF z_Hje])
   show FALSE
   proof (rule zenon_imply [OF z_Hkj])
    assume z_Hkm:"(~?z_hkk)"
    show FALSE
    proof (rule notE [OF z_Hkm])
     have z_Hkn: "(isa'dotdot(1, a_ihash_primea)=isa'dotdot(1, i))" (is "?z_hch=?z_hci")
     proof (rule zenon_nnpp [of "(?z_hch=?z_hci)"])
      assume z_Hcg:"(?z_hch~=?z_hci)"
      show FALSE
      by (rule zenon_L6_ [OF z_Hcg z_Hl])
     qed
     have z_Hkk: "?z_hkk"
     by (rule subst [where P="(\<lambda>zenon_Vpjd. ((CHOOSE x:(~((x \\in ?z_hch)=>bAll(?z_hch, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) \\in zenon_Vpjd))", OF z_Hkn], fact z_Hjw)
     thus "?z_hkk" .
    qed
   next
    assume z_Hkl:"?z_hkl"
    have z_Hkr_z_Hkl: "(\\A x:((x \\in isa'dotdot(1, i))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((A[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[x]))))) == ?z_hkl" (is "?z_hkr == _")
    by (unfold bAll_def)
    have z_Hkr: "?z_hkr" (is "\\A x : ?z_hkv(x)")
    by (unfold z_Hkr_z_Hkl, fact z_Hkl)
    have z_Hkw: "?z_hkv((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "?z_hkx=>?z_hky")
    by (rule zenon_all_0 [of "?z_hkv" "(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, a_ihash_primea))=>bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))", OF z_Hkr])
    show FALSE
    proof (rule zenon_imply [OF z_Hkw])
     assume z_Hkz:"(~?z_hkx)"
     show FALSE
     proof (rule notE [OF z_Hkz])
      have z_Hkn: "(isa'dotdot(1, a_ihash_primea)=isa'dotdot(1, i))" (is "?z_hch=?z_hci")
      proof (rule zenon_nnpp [of "(?z_hch=?z_hci)"])
       assume z_Hcg:"(?z_hch~=?z_hci)"
       show FALSE
       by (rule zenon_L6_ [OF z_Hcg z_Hl])
      qed
      have z_Hkx: "?z_hkx"
      by (rule subst [where P="(\<lambda>zenon_Vqjd. ((CHOOSE x:(~((x \\in ?z_hch)=>(((CHOOSE x:(~((x \\in ?z_hch)=>bAll(?z_hch, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in ?z_hch)=>bAll(?z_hch, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) \\in zenon_Vqjd))", OF z_Hkn], fact z_Hkf)
      thus "?z_hkx" .
     qed
    next
     assume z_Hky:"?z_hky" (is "_=>?z_hds")
     show FALSE
     proof (rule zenon_imply [OF z_Hky])
      assume z_Hld:"(~?z_hki)"
      show FALSE
      by (rule notE [OF z_Hld z_Hki])
     next
      assume z_Hds:"?z_hds"
      show FALSE
      by (rule zenon_L8_ [OF z_Hdq z_Hds z_Hbe])
     qed
    qed
   qed
  next
   assume z_Hej:"(~?z_hek)"
   show FALSE
   by (rule zenon_L9_ [OF z_Hbc z_Hej z_Hfd z_Hbe z_Hbo z_Hfm])
  qed
 qed
 have zenon_L11_: "(~((a_pchash_primea=''Lbl_2'')=>((a_jhash_primea \\in isa'dotdot(1, (a_ihash_primea + 1)))&((a_ihash_primea < N)&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&(bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>p. bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>q. ((p <= q)=>((a_Ahash_primea[p]) <= (a_Ahash_primea[q])))))))&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>p. bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[p]) <= (a_Ahash_primea[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))))))) ==> (a_pchash_primea=pc) ==> (pc=''Lbl_1'') ==> FALSE" (is "?z_hle ==> ?z_hbz ==> ?z_hbx ==> FALSE")
 proof -
  assume z_Hle:"?z_hle" (is "~(?z_hlg=>?z_hlh)")
  assume z_Hbz:"?z_hbz"
  assume z_Hbx:"?z_hbx" (is "_=?z_hbu")
  have z_Hlg: "?z_hlg" (is "_=?z_hbv")
  by (rule zenon_notimply_0 [OF z_Hle])
  have z_Hmo: "(?z_hbv~=?z_hbu)"
  by auto
  have z_Hmp: "(a_pchash_primea~=pc)"
  by (rule zenon_stringdiffll [OF z_Hmo z_Hlg z_Hbx])
   show FALSE
   by (rule notE [OF z_Hmp z_Hbz])
 qed
 have zenon_L12_: "(~((a_pchash_primea=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))) ==> (a_pchash_primea=pc) ==> (pc=''Lbl_1'') ==> FALSE" (is "?z_hmq ==> ?z_hbz ==> ?z_hbx ==> FALSE")
 proof -
  assume z_Hmq:"?z_hmq" (is "~(?z_hms=>?z_hmt)")
  assume z_Hbz:"?z_hbz"
  assume z_Hbx:"?z_hbx" (is "_=?z_hbu")
  have z_Hms: "?z_hms" (is "_=?z_hbw")
  by (rule zenon_notimply_0 [OF z_Hmq])
  have z_Hmx: "(?z_hbw~=?z_hbu)"
  by auto
  have z_Hmp: "(a_pchash_primea~=pc)"
  by (rule zenon_stringdiffll [OF z_Hmx z_Hms z_Hbx])
   show FALSE
   by (rule notE [OF z_Hmp z_Hbz])
 qed
 have zenon_L13_: "(~(a_pchash_primea \\in {''Lbl_1'', ''Lbl_2'', ''Done''})) ==> (pc=''Lbl_2'') ==> (a_pchash_primea=pc) ==> FALSE" (is "?z_hbq ==> ?z_hmy ==> ?z_hbz ==> FALSE")
 proof -
  assume z_Hbq:"?z_hbq" (is "~?z_hbr")
  assume z_Hmy:"?z_hmy" (is "_=?z_hbv")
  assume z_Hbz:"?z_hbz"
  have z_Hmz: "(~(a_pchash_primea \\in {?z_hbv, ''Done''}))" (is "~?z_hna")
  by (rule zenon_notin_addElt_1 [of "a_pchash_primea" "''Lbl_1''" "{?z_hbv, ''Done''}", OF z_Hbq])
  have z_Hnb: "(a_pchash_primea~=?z_hbv)"
  by (rule zenon_notin_addElt_0 [of "a_pchash_primea" "?z_hbv" "{''Done''}", OF z_Hmz])
  show FALSE
  proof (rule notE [OF z_Hnb])
   have z_Hlg: "(a_pchash_primea=?z_hbv)"
   by (rule subst [where P="(\<lambda>zenon_Vgjd. (a_pchash_primea=zenon_Vgjd))", OF z_Hmy], fact z_Hbz)
   thus "(a_pchash_primea=?z_hbv)" .
  qed
 qed
 have zenon_L14_: "(~((a_pchash_primea=''Lbl_1'')=>(bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>j_1. bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))) ==> (a_pchash_primea=pc) ==> (pc=''Lbl_2'') ==> FALSE" (is "?z_hit ==> ?z_hbz ==> ?z_hmy ==> FALSE")
 proof -
  assume z_Hit:"?z_hit" (is "~(?z_hcc=>?z_hiv)")
  assume z_Hbz:"?z_hbz"
  assume z_Hmy:"?z_hmy" (is "_=?z_hbv")
  have z_Hcc: "?z_hcc" (is "_=?z_hbu")
  by (rule zenon_notimply_0 [OF z_Hit])
  have z_Hnd: "(?z_hbu~=?z_hbv)"
  by auto
  have z_Hmp: "(a_pchash_primea~=pc)"
  by (rule zenon_stringdiffll [OF z_Hnd z_Hcc z_Hmy])
   show FALSE
   by (rule notE [OF z_Hmp z_Hbz])
 qed
 have zenon_L15_: "(isa'dotdot(1, (a_jhash_primea +  -.(1)))~=isa'dotdot(1, (j +  -.(1)))) ==> (a_jhash_primea=j) ==> FALSE" (is "?z_hne ==> ?z_hv ==> FALSE")
 proof -
  assume z_Hne:"?z_hne" (is "?z_hlp~=?z_hnf")
  assume z_Hv:"?z_hv"
  show FALSE
  proof (rule zenon_noteq [of "?z_hnf"])
   have z_Hnh: "((a_jhash_primea +  -.(1))=(j +  -.(1)))" (is "?z_hlq=?z_hng")
   proof (rule zenon_nnpp [of "(?z_hlq=?z_hng)"])
    assume z_Hni:"(?z_hlq~=?z_hng)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hng"])
     have z_Hnj: "(?z_hng~=?z_hng)"
     by (rule subst [where P="(\<lambda>zenon_Vsjd. ((zenon_Vsjd +  -.(1))~=?z_hng))", OF z_Hv], fact z_Hni)
     thus "(?z_hng~=?z_hng)" .
    qed
   qed
   have z_Hno: "(?z_hnf~=?z_hnf)"
   by (rule subst [where P="(\<lambda>zenon_Vtjd. (isa'dotdot(1, zenon_Vtjd)~=?z_hnf))", OF z_Hnh], fact z_Hne)
   thus "(?z_hnf~=?z_hnf)" .
  qed
 qed
 have zenon_L16_: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hnt ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hnt:"?z_hnt" (is "?z_hnu~=?z_hoh")
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule zenon_noteq [of "?z_hoh"])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hoi: "(?z_hoh~=?z_hoh)"
   by (rule subst [where P="(\<lambda>zenon_Vujd. ((zenon_Vujd[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=?z_hoh))", OF z_Hbf], fact z_Hnt)
   thus "(?z_hoh~=?z_hoh)" .
  qed
 qed
 have zenon_L17_: "((a_ihash_primea + 1)~=(i + 1)) ==> (a_ihash_primea=i) ==> FALSE" (is "?z_hon ==> ?z_hl ==> FALSE")
 proof -
  assume z_Hon:"?z_hon" (is "?z_hlk~=?z_hoo")
  assume z_Hl:"?z_hl"
  show FALSE
  proof (rule zenon_noteq [of "?z_hoo"])
   have z_Hop: "(?z_hoo~=?z_hoo)"
   by (rule subst [where P="(\<lambda>zenon_Vvjd. ((zenon_Vvjd + 1)~=?z_hoo))", OF z_Hl], fact z_Hon)
   thus "(?z_hoo~=?z_hoo)" .
  qed
 qed
 have zenon_L18_: "(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1))~=isa'dotdot(j, (i + 1))) ==> (a_ihash_primea=i) ==> (a_jhash_primea=j) ==> FALSE" (is "?z_hou ==> ?z_hl ==> ?z_hv ==> FALSE")
 proof -
  assume z_Hou:"?z_hou" (is "?z_hlw~=?z_hov")
  assume z_Hl:"?z_hl"
  assume z_Hv:"?z_hv"
  show FALSE
  proof (rule zenon_noteq [of "?z_hov"])
   have z_How: "((a_ihash_primea + 1)=(i + 1))" (is "?z_hlk=?z_hoo")
   proof (rule zenon_nnpp [of "(?z_hlk=?z_hoo)"])
    assume z_Hon:"(?z_hlk~=?z_hoo)"
    show FALSE
    by (rule zenon_L17_ [OF z_Hon z_Hl])
   qed
   have z_Hox: "(isa'dotdot(j, ?z_hlk)~=?z_hov)" (is "?z_hoy~=_")
   by (rule subst [where P="(\<lambda>zenon_Vwjd. (isa'dotdot(zenon_Vwjd, ?z_hlk)~=?z_hov))", OF z_Hv], fact z_Hou)
   have z_Hpd: "(?z_hov~=?z_hov)"
   by (rule subst [where P="(\<lambda>zenon_Vxjd. (isa'dotdot(j, zenon_Vxjd)~=?z_hov))", OF z_How], fact z_Hox)
   thus "(?z_hov~=?z_hov)" .
  qed
 qed
 have zenon_L19_: "((A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hpi ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hpi:"?z_hpi" (is "?z_hpj~=?z_hpw")
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule zenon_noteq [of "?z_hpw"])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hpx: "(?z_hpw~=?z_hpw)"
   by (rule subst [where P="(\<lambda>zenon_Vyjd. ((zenon_Vyjd[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=?z_hpw))", OF z_Hbf], fact z_Hpi)
   thus "(?z_hpw~=?z_hpw)" .
  qed
 qed
 have zenon_L20_: "(~((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))]))) ==> ((A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hqc ==> ?z_hqe ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hqc:"?z_hqc" (is "~?z_hqd")
  assume z_Hqe:"?z_hqe"
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule notE [OF z_Hqc])
   have z_Hqg: "((A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]))" (is "?z_hqf=?z_hpv")
   proof (rule zenon_nnpp [of "(?z_hqf=?z_hpv)"])
    assume z_Hqh:"(?z_hqf~=?z_hpv)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hpv"])
     have z_Hbf: "(A=a_Ahash_primea)"
     by (rule sym [OF z_Hbe])
     have z_Hqi: "(?z_hpv~=?z_hpv)"
     by (rule subst [where P="(\<lambda>zenon_Vzjd. ((zenon_Vzjd[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])~=?z_hpv))", OF z_Hbf], fact z_Hqh)
     thus "(?z_hpv~=?z_hpv)" .
    qed
   qed
   have z_Hqn: "((A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hpv <= (a_Ahash_primea[x]))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hpv <= (a_Ahash_primea[x]))))))]))" (is "?z_hpj=?z_hpw")
   proof (rule zenon_nnpp [of "(?z_hpj=?z_hpw)"])
    assume z_Hpi:"(?z_hpj~=?z_hpw)"
    show FALSE
    by (rule zenon_L19_ [OF z_Hpi z_Hbe])
   qed
   have z_Hqo: "(?z_hpv <= ?z_hpj)" (is "?z_hqo")
   by (rule subst [where P="(\<lambda>zenon_Vakd. (zenon_Vakd <= ?z_hpj))", OF z_Hqg], fact z_Hqe)
   have z_Hqd: "?z_hqd"
   by (rule subst [where P="(\<lambda>zenon_Vbkd. (?z_hpv <= zenon_Vbkd))", OF z_Hqn], fact z_Hqo)
   thus "?z_hqd" .
  qed
 qed
 have zenon_L21_: "((A[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))])~=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hqv ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hqv:"?z_hqv" (is "?z_hqw~=?z_hrj")
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule zenon_noteq [of "?z_hrj"])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hrk: "(?z_hrj~=?z_hrj)"
   by (rule subst [where P="(\<lambda>zenon_Vckd. ((zenon_Vckd[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))])~=?z_hrj))", OF z_Hbf], fact z_Hqv)
   thus "(?z_hrj~=?z_hrj)" .
  qed
 qed
 have zenon_L22_: "(~((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))]))) ==> ((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (A[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hrp ==> ?z_hrr ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hrp:"?z_hrp" (is "~?z_hrq")
  assume z_Hrr:"?z_hrr"
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule notE [OF z_Hrp])
   have z_Hrt: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]))" (is "?z_hrs=?z_hrc")
   proof (rule zenon_nnpp [of "(?z_hrs=?z_hrc)"])
    assume z_Hru:"(?z_hrs~=?z_hrc)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hrc"])
     have z_Hbf: "(A=a_Ahash_primea)"
     by (rule sym [OF z_Hbe])
     have z_Hrv: "(?z_hrc~=?z_hrc)"
     by (rule subst [where P="(\<lambda>zenon_Vdkd. ((zenon_Vdkd[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))])~=?z_hrc))", OF z_Hbf], fact z_Hru)
     thus "(?z_hrc~=?z_hrc)" .
    qed
   qed
   have z_Hsa: "((A[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>(?z_hrc <= (a_Ahash_primea[x])))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>(?z_hrc <= (a_Ahash_primea[x])))))]))" (is "?z_hqw=?z_hrj")
   proof (rule zenon_nnpp [of "(?z_hqw=?z_hrj)"])
    assume z_Hqv:"(?z_hqw~=?z_hrj)"
    show FALSE
    by (rule zenon_L21_ [OF z_Hqv z_Hbe])
   qed
   have z_Hsb: "(?z_hrc <= ?z_hqw)" (is "?z_hsb")
   by (rule subst [where P="(\<lambda>zenon_Vekd. (zenon_Vekd <= ?z_hqw))", OF z_Hrt], fact z_Hrr)
   have z_Hrq: "?z_hrq"
   by (rule subst [where P="(\<lambda>zenon_Vfkd. (?z_hrc <= zenon_Vfkd))", OF z_Hsa], fact z_Hsb)
   thus "?z_hrq" .
  qed
 qed
 have zenon_L23_: "(~((a_pchash_primea=''Lbl_2'')=>((a_jhash_primea \\in isa'dotdot(1, (a_ihash_primea + 1)))&((a_ihash_primea < N)&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&(bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>p. bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>q. ((p <= q)=>((a_Ahash_primea[p]) <= (a_Ahash_primea[q])))))))&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>p. bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[p]) <= (a_Ahash_primea[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))))))) ==> (j \\in isa'dotdot(1, (i + 1))) ==> (a_ihash_primea=i) ==> (a_jhash_primea=j) ==> (i < N) ==> (\\A x:((x \\in isa'dotdot(1, (j +  -.(1))))=>bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) ==> (a_Ahash_primea=A) ==> (\\A x:((x \\in isa'dotdot(j, (i + 1)))=>bAll(isa'dotdot(j, (i + 1)), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) ==> (\\A x:((x \\in isa'dotdot(1, (j +  -.(1))))=>bAll(isa'dotdot((j + 1), (i + 1)), (\<lambda>q. ((A[x]) <= (A[q])))))) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> ((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1]))))))))) ==> (a_A0hash_primea=a_A0a) ==> (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])])))) ==> FALSE" (is "?z_hle ==> ?z_hsi ==> ?z_hl ==> ?z_hv ==> ?z_hsk ==> ?z_hsl ==> ?z_hbe ==> ?z_hsp ==> ?z_hst ==> ?z_hbc ==> ?z_hfd ==> ?z_hbo ==> ?z_hfm ==> FALSE")
 proof -
  assume z_Hle:"?z_hle" (is "~(?z_hlg=>?z_hlh)")
  assume z_Hsi:"?z_hsi"
  assume z_Hl:"?z_hl"
  assume z_Hv:"?z_hv"
  assume z_Hsk:"?z_hsk"
  assume z_Hsl:"?z_hsl" (is "\\A x : ?z_htb(x)")
  assume z_Hbe:"?z_hbe"
  assume z_Hsp:"?z_hsp" (is "\\A x : ?z_htc(x)")
  assume z_Hst:"?z_hst" (is "\\A x : ?z_htd(x)")
  assume z_Hbc:"?z_hbc"
  assume z_Hfd:"?z_hfd"
  assume z_Hbo:"?z_hbo"
  assume z_Hfm:"?z_hfm" (is "_=?z_hfn")
  have z_Hte: "(~?z_hlh)" (is "~(?z_hli&?z_hll)")
  by (rule zenon_notimply_1 [OF z_Hle])
  show FALSE
  proof (rule zenon_notand [OF z_Hte])
   assume z_Htf:"(~?z_hli)"
   show FALSE
   proof (rule notE [OF z_Htf])
    have z_Hw: "(j=a_jhash_primea)"
    by (rule sym [OF z_Hv])
    have z_Htg: "(isa'dotdot(1, (i + 1))=isa'dotdot(1, (a_ihash_primea + 1)))" (is "?z_hsj=?z_hlj")
    proof (rule zenon_nnpp [of "(?z_hsj=?z_hlj)"])
     assume z_Hth:"(?z_hsj~=?z_hlj)"
     show FALSE
     proof (rule zenon_noteq [of "?z_hlj"])
      have z_Hti: "((i + 1)=(a_ihash_primea + 1))" (is "?z_hoo=?z_hlk")
      proof (rule zenon_nnpp [of "(?z_hoo=?z_hlk)"])
       assume z_Htj:"(?z_hoo~=?z_hlk)"
       show FALSE
       proof (rule zenon_noteq [of "?z_hlk"])
        have z_Hm: "(i=a_ihash_primea)"
        by (rule sym [OF z_Hl])
        have z_Htk: "(?z_hlk~=?z_hlk)"
        by (rule subst [where P="(\<lambda>zenon_Vgkd. ((zenon_Vgkd + 1)~=?z_hlk))", OF z_Hm], fact z_Htj)
        thus "(?z_hlk~=?z_hlk)" .
       qed
      qed
      have z_Htp: "(?z_hlj~=?z_hlj)"
      by (rule subst [where P="(\<lambda>zenon_Vhkd. (isa'dotdot(1, zenon_Vhkd)~=?z_hlj))", OF z_Hti], fact z_Hth)
      thus "(?z_hlj~=?z_hlj)" .
     qed
    qed
    have z_Htu: "(a_jhash_primea \\in ?z_hsj)" (is "?z_htu")
    by (rule subst [where P="(\<lambda>zenon_Vikd. (zenon_Vikd \\in ?z_hsj))", OF z_Hw], fact z_Hsi)
    have z_Hli: "?z_hli"
    by (rule subst [where P="(\<lambda>zenon_Vjkd. (a_jhash_primea \\in zenon_Vjkd))", OF z_Htg], fact z_Htu)
    thus "?z_hli" .
   qed
  next
   assume z_Hub:"(~?z_hll)" (is "~(?z_hlm&?z_hln)")
   show FALSE
   proof (rule zenon_notand [OF z_Hub])
    assume z_Huc:"(~?z_hlm)"
    show FALSE
    proof (rule notE [OF z_Huc])
     have z_Hm: "(i=a_ihash_primea)"
     by (rule sym [OF z_Hl])
     have z_Hlm: "?z_hlm"
     by (rule subst [where P="(\<lambda>zenon_Vkkd. (zenon_Vkkd < N))", OF z_Hm], fact z_Hsk)
     thus "?z_hlm" .
    qed
   next
    assume z_Hug:"(~?z_hln)" (is "~(?z_hlo&?z_hlu)")
    show FALSE
    proof (rule zenon_notand [OF z_Hug])
     assume z_Huh:"(~?z_hlo)"
     have z_Hui_z_Huh: "(~(\\A x:((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) == (~?z_hlo)" (is "?z_hui == ?z_huh")
     by (unfold bAll_def)
     have z_Hui: "?z_hui" (is "~(\\A x : ?z_huk(x))")
     by (unfold z_Hui_z_Huh, fact z_Huh)
     have z_Hul: "(\\E x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))" (is "\\E x : ?z_hum(x)")
     by (rule zenon_notallex_0 [of "?z_huk", OF z_Hui])
     have z_Hun: "?z_hum((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "~(?z_huo=>?z_hup)")
     by (rule zenon_ex_choose_0 [of "?z_hum", OF z_Hul])
     have z_Huo: "?z_huo"
     by (rule zenon_notimply_0 [OF z_Hun])
     have z_Huq: "(~?z_hup)"
     by (rule zenon_notimply_1 [OF z_Hun])
     have z_Hur_z_Huq: "(~(\\A x:((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) == (~?z_hup)" (is "?z_hur == ?z_huq")
     by (unfold bAll_def)
     have z_Hur: "?z_hur" (is "~(\\A x : ?z_hut(x))")
     by (unfold z_Hur_z_Huq, fact z_Huq)
     have z_Huu: "(\\E x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))" (is "\\E x : ?z_huv(x)")
     by (rule zenon_notallex_0 [of "?z_hut", OF z_Hur])
     have z_Huw: "?z_huv((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "~(?z_hux=>?z_huy)")
     by (rule zenon_ex_choose_0 [of "?z_huv", OF z_Huu])
     have z_Hux: "?z_hux"
     by (rule zenon_notimply_0 [OF z_Huw])
     have z_Huz: "(~?z_huy)" (is "~(?z_hva=>?z_hvb)")
     by (rule zenon_notimply_1 [OF z_Huw])
     have z_Hva: "?z_hva"
     by (rule zenon_notimply_0 [OF z_Huz])
     have z_Hvc: "(~?z_hvb)"
     by (rule zenon_notimply_1 [OF z_Huz])
     have z_Hvd: "?z_htb((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "?z_hve=>?z_hvf")
     by (rule zenon_all_0 [of "?z_htb" "(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))", OF z_Hsl])
     show FALSE
     proof (rule zenon_imply [OF z_Hvd])
      assume z_Hvg:"(~?z_hve)"
      show FALSE
      proof (rule notE [OF z_Hvg])
       have z_Hvh: "(isa'dotdot(1, (a_jhash_primea +  -.(1)))=isa'dotdot(1, (j +  -.(1))))" (is "?z_hlp=?z_hnf")
       proof (rule zenon_nnpp [of "(?z_hlp=?z_hnf)"])
        assume z_Hne:"(?z_hlp~=?z_hnf)"
        show FALSE
        by (rule zenon_L15_ [OF z_Hne z_Hv])
       qed
       have z_Hve: "?z_hve"
       by (rule subst [where P="(\<lambda>zenon_Vlkd. ((CHOOSE x:(~((x \\in ?z_hlp)=>bAll(?z_hlp, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) \\in zenon_Vlkd))", OF z_Hvh], fact z_Huo)
       thus "?z_hve" .
      qed
     next
      assume z_Hvf:"?z_hvf"
      have z_Hvl_z_Hvf: "(\\A x:((x \\in isa'dotdot(1, (j +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[x]))))) == ?z_hvf" (is "?z_hvl == _")
      by (unfold bAll_def)
      have z_Hvl: "?z_hvl" (is "\\A x : ?z_hvq(x)")
      by (unfold z_Hvl_z_Hvf, fact z_Hvf)
      have z_Hvr: "?z_hvq((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "?z_hvs=>?z_hvt")
      by (rule zenon_all_0 [of "?z_hvq" "(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))", OF z_Hvl])
      show FALSE
      proof (rule zenon_imply [OF z_Hvr])
       assume z_Hvu:"(~?z_hvs)"
       show FALSE
       proof (rule notE [OF z_Hvu])
        have z_Hvh: "(isa'dotdot(1, (a_jhash_primea +  -.(1)))=isa'dotdot(1, (j +  -.(1))))" (is "?z_hlp=?z_hnf")
        proof (rule zenon_nnpp [of "(?z_hlp=?z_hnf)"])
         assume z_Hne:"(?z_hlp~=?z_hnf)"
         show FALSE
         by (rule zenon_L15_ [OF z_Hne z_Hv])
        qed
        have z_Hvs: "?z_hvs"
        by (rule subst [where P="(\<lambda>zenon_Vmkd. ((CHOOSE x:(~((x \\in ?z_hlp)=>(((CHOOSE x:(~((x \\in ?z_hlp)=>bAll(?z_hlp, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in ?z_hlp)=>bAll(?z_hlp, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) \\in zenon_Vmkd))", OF z_Hvh], fact z_Hux)
        thus "?z_hvs" .
       qed
      next
       assume z_Hvt:"?z_hvt" (is "_=>?z_hvy")
       show FALSE
       proof (rule zenon_imply [OF z_Hvt])
        assume z_Hvz:"(~?z_hva)"
        show FALSE
        by (rule notE [OF z_Hvz z_Hva])
       next
        assume z_Hvy:"?z_hvy"
        show FALSE
        proof (rule notE [OF z_Hvc])
         have z_Hwa: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]))" (is "?z_hvp=?z_hog")
         proof (rule zenon_nnpp [of "(?z_hvp=?z_hog)"])
          assume z_Hwb:"(?z_hvp~=?z_hog)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hog"])
           have z_Hbf: "(A=a_Ahash_primea)"
           by (rule sym [OF z_Hbe])
           have z_Hwc: "(?z_hog~=?z_hog)"
           by (rule subst [where P="(\<lambda>zenon_Vnkd. ((zenon_Vnkd[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])~=?z_hog))", OF z_Hbf], fact z_Hwb)
           thus "(?z_hog~=?z_hog)" .
          qed
         qed
         have z_Hwh: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hog <= (a_Ahash_primea[x]))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hog <= (a_Ahash_primea[x]))))))]))" (is "?z_hnu=?z_hoh")
         proof (rule zenon_nnpp [of "(?z_hnu=?z_hoh)"])
          assume z_Hnt:"(?z_hnu~=?z_hoh)"
          show FALSE
          by (rule zenon_L16_ [OF z_Hnt z_Hbe])
         qed
         have z_Hwi: "(?z_hog <= ?z_hnu)" (is "?z_hwi")
         by (rule subst [where P="(\<lambda>zenon_Vokd. (zenon_Vokd <= ?z_hnu))", OF z_Hwa], fact z_Hvy)
         have z_Hvb: "?z_hvb"
         by (rule subst [where P="(\<lambda>zenon_Vpkd. (?z_hog <= zenon_Vpkd))", OF z_Hwh], fact z_Hwi)
         thus "?z_hvb" .
        qed
       qed
      qed
     qed
    next
     assume z_Hwp:"(~?z_hlu)" (is "~(?z_hlv&?z_hmh)")
     show FALSE
     proof (rule zenon_notand [OF z_Hwp])
      assume z_Hwq:"(~?z_hlv)"
      have z_Hwr_z_Hwq: "(~(\\A x:((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) == (~?z_hlv)" (is "?z_hwr == ?z_hwq")
      by (unfold bAll_def)
      have z_Hwr: "?z_hwr" (is "~(\\A x : ?z_hwt(x))")
      by (unfold z_Hwr_z_Hwq, fact z_Hwq)
      have z_Hwu: "(\\E x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))" (is "\\E x : ?z_hwv(x)")
      by (rule zenon_notallex_0 [of "?z_hwt", OF z_Hwr])
      have z_Hww: "?z_hwv((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "~(?z_hwx=>?z_hwy)")
      by (rule zenon_ex_choose_0 [of "?z_hwv", OF z_Hwu])
      have z_Hwx: "?z_hwx"
      by (rule zenon_notimply_0 [OF z_Hww])
      have z_Hwz: "(~?z_hwy)"
      by (rule zenon_notimply_1 [OF z_Hww])
      have z_Hxa_z_Hwz: "(~(\\A x:((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) == (~?z_hwy)" (is "?z_hxa == ?z_hwz")
      by (unfold bAll_def)
      have z_Hxa: "?z_hxa" (is "~(\\A x : ?z_hxc(x))")
      by (unfold z_Hxa_z_Hwz, fact z_Hwz)
      have z_Hxd: "(\\E x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))" (is "\\E x : ?z_hxe(x)")
      by (rule zenon_notallex_0 [of "?z_hxc", OF z_Hxa])
      have z_Hxf: "?z_hxe((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "~(?z_hxg=>?z_hxh)")
      by (rule zenon_ex_choose_0 [of "?z_hxe", OF z_Hxd])
      have z_Hxg: "?z_hxg"
      by (rule zenon_notimply_0 [OF z_Hxf])
      have z_Hxi: "(~?z_hxh)" (is "~(?z_hxj=>?z_hqd)")
      by (rule zenon_notimply_1 [OF z_Hxf])
      have z_Hxj: "?z_hxj"
      by (rule zenon_notimply_0 [OF z_Hxi])
      have z_Hqc: "(~?z_hqd)"
      by (rule zenon_notimply_1 [OF z_Hxi])
      have z_Hxk: "?z_htc((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "?z_hxl=>?z_hxm")
      by (rule zenon_all_0 [of "?z_htc" "(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))", OF z_Hsp])
      show FALSE
      proof (rule zenon_imply [OF z_Hxk])
       assume z_Hxn:"(~?z_hxl)"
       show FALSE
       proof (rule notE [OF z_Hxn])
        have z_Hxo: "(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1))=isa'dotdot(j, (i + 1)))" (is "?z_hlw=?z_hov")
        proof (rule zenon_nnpp [of "(?z_hlw=?z_hov)"])
         assume z_Hou:"(?z_hlw~=?z_hov)"
         show FALSE
         by (rule zenon_L18_ [OF z_Hou z_Hl z_Hv])
        qed
        have z_Hxl: "?z_hxl"
        by (rule subst [where P="(\<lambda>zenon_Vqkd. ((CHOOSE x:(~((x \\in ?z_hlw)=>bAll(?z_hlw, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) \\in zenon_Vqkd))", OF z_Hxo], fact z_Hwx)
        thus "?z_hxl" .
       qed
      next
       assume z_Hxm:"?z_hxm"
       have z_Hxs_z_Hxm: "(\\A x:((x \\in isa'dotdot(j, (i + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((A[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[x]))))) == ?z_hxm" (is "?z_hxs == _")
       by (unfold bAll_def)
       have z_Hxs: "?z_hxs" (is "\\A x : ?z_hxw(x)")
       by (unfold z_Hxs_z_Hxm, fact z_Hxm)
       have z_Hxx: "?z_hxw((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "?z_hxy=>?z_hxz")
       by (rule zenon_all_0 [of "?z_hxw" "(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>(((CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)))=>bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))", OF z_Hxs])
       show FALSE
       proof (rule zenon_imply [OF z_Hxx])
        assume z_Hya:"(~?z_hxy)"
        show FALSE
        proof (rule notE [OF z_Hya])
         have z_Hxo: "(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1))=isa'dotdot(j, (i + 1)))" (is "?z_hlw=?z_hov")
         proof (rule zenon_nnpp [of "(?z_hlw=?z_hov)"])
          assume z_Hou:"(?z_hlw~=?z_hov)"
          show FALSE
          by (rule zenon_L18_ [OF z_Hou z_Hl z_Hv])
         qed
         have z_Hxy: "?z_hxy"
         by (rule subst [where P="(\<lambda>zenon_Vrkd. ((CHOOSE x:(~((x \\in ?z_hlw)=>(((CHOOSE x:(~((x \\in ?z_hlw)=>bAll(?z_hlw, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in ?z_hlw)=>bAll(?z_hlw, (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) \\in zenon_Vrkd))", OF z_Hxo], fact z_Hxg)
         thus "?z_hxy" .
        qed
       next
        assume z_Hxz:"?z_hxz" (is "_=>?z_hqe")
        show FALSE
        proof (rule zenon_imply [OF z_Hxz])
         assume z_Hye:"(~?z_hxj)"
         show FALSE
         by (rule notE [OF z_Hye z_Hxj])
        next
         assume z_Hqe:"?z_hqe"
         show FALSE
         by (rule zenon_L20_ [OF z_Hqc z_Hqe z_Hbe])
        qed
       qed
      qed
     next
      assume z_Hyf:"(~?z_hmh)" (is "~(?z_hmi&?z_hek)")
      show FALSE
      proof (rule zenon_notand [OF z_Hyf])
       assume z_Hyg:"(~?z_hmi)"
       have z_Hyh_z_Hyg: "(~(\\A x:((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q]))))))) == (~?z_hmi)" (is "?z_hyh == ?z_hyg")
       by (unfold bAll_def)
       have z_Hyh: "?z_hyh" (is "~(\\A x : ?z_hyj(x))")
       by (unfold z_Hyh_z_Hyg, fact z_Hyg)
       have z_Hyk: "(\\E x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))" (is "\\E x : ?z_hyl(x)")
       by (rule zenon_notallex_0 [of "?z_hyj", OF z_Hyh])
       have z_Hym: "?z_hyl((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q]))))))))" (is "~(?z_hyn=>?z_hyo)")
       by (rule zenon_ex_choose_0 [of "?z_hyl", OF z_Hyk])
       have z_Hyn: "?z_hyn"
       by (rule zenon_notimply_0 [OF z_Hym])
       have z_Hyp: "(~?z_hyo)"
       by (rule zenon_notimply_1 [OF z_Hym])
       have z_Hyq_z_Hyp: "(~(\\A x:((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x]))))) == (~?z_hyo)" (is "?z_hyq == ?z_hyp")
       by (unfold bAll_def)
       have z_Hyq: "?z_hyq" (is "~(\\A x : ?z_hys(x))")
       by (unfold z_Hyq_z_Hyp, fact z_Hyp)
       have z_Hyt: "(\\E x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))" (is "\\E x : ?z_hyu(x)")
       by (rule zenon_notallex_0 [of "?z_hys", OF z_Hyq])
       have z_Hyv: "?z_hyu((CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x]))))))" (is "~(?z_hyw=>?z_hrq)")
       by (rule zenon_ex_choose_0 [of "?z_hyu", OF z_Hyt])
       have z_Hyw: "?z_hyw"
       by (rule zenon_notimply_0 [OF z_Hyv])
       have z_Hrp: "(~?z_hrq)"
       by (rule zenon_notimply_1 [OF z_Hyv])
       have z_Hyx: "?z_htd((CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q]))))))))" (is "?z_hyy=>?z_hyz")
       by (rule zenon_all_0 [of "?z_htd" "(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))", OF z_Hst])
       show FALSE
       proof (rule zenon_imply [OF z_Hyx])
        assume z_Hza:"(~?z_hyy)"
        show FALSE
        proof (rule notE [OF z_Hza])
         have z_Hvh: "(isa'dotdot(1, (a_jhash_primea +  -.(1)))=isa'dotdot(1, (j +  -.(1))))" (is "?z_hlp=?z_hnf")
         proof (rule zenon_nnpp [of "(?z_hlp=?z_hnf)"])
          assume z_Hne:"(?z_hlp~=?z_hnf)"
          show FALSE
          by (rule zenon_L15_ [OF z_Hne z_Hv])
         qed
         have z_Hyy: "?z_hyy"
         by (rule subst [where P="(\<lambda>zenon_Vskd. ((CHOOSE x:(~((x \\in ?z_hlp)=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q]))))))) \\in zenon_Vskd))", OF z_Hvh], fact z_Hyn)
         thus "?z_hyy" .
        qed
       next
        assume z_Hyz:"?z_hyz"
        have z_Hze_z_Hyz: "(\\A x:((x \\in isa'dotdot((j + 1), (i + 1)))=>((A[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (A[x])))) == ?z_hyz" (is "?z_hze == _")
        by (unfold bAll_def)
        have z_Hze: "?z_hze" (is "\\A x : ?z_hzi(x)")
        by (unfold z_Hze_z_Hyz, fact z_Hyz)
        have z_Hzj: "?z_hzi((CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x]))))))" (is "?z_hzk=>?z_hrr")
        by (rule zenon_all_0 [of "?z_hzi" "(CHOOSE x:(~((x \\in isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)))=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x])))))", OF z_Hze])
        show FALSE
        proof (rule zenon_imply [OF z_Hzj])
         assume z_Hzl:"(~?z_hzk)"
         show FALSE
         proof (rule notE [OF z_Hzl])
          have z_Hzm: "(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1))=isa'dotdot((j + 1), (i + 1)))" (is "?z_hml=?z_hsw")
          proof (rule zenon_nnpp [of "(?z_hml=?z_hsw)"])
           assume z_Hzn:"(?z_hml~=?z_hsw)"
           show FALSE
           proof (rule zenon_noteq [of "?z_hsw"])
            have z_Hzo: "((a_jhash_primea + 1)=(j + 1))" (is "?z_hmm=?z_hsx")
            proof (rule zenon_nnpp [of "(?z_hmm=?z_hsx)"])
             assume z_Hzp:"(?z_hmm~=?z_hsx)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hsx"])
              have z_Hzq: "(?z_hsx~=?z_hsx)"
              by (rule subst [where P="(\<lambda>zenon_Vtkd. ((zenon_Vtkd + 1)~=?z_hsx))", OF z_Hv], fact z_Hzp)
              thus "(?z_hsx~=?z_hsx)" .
             qed
            qed
            have z_How: "((a_ihash_primea + 1)=(i + 1))" (is "?z_hlk=?z_hoo")
            proof (rule zenon_nnpp [of "(?z_hlk=?z_hoo)"])
             assume z_Hon:"(?z_hlk~=?z_hoo)"
             show FALSE
             by (rule zenon_L17_ [OF z_Hon z_Hl])
            qed
            have z_Hzv: "(isa'dotdot(?z_hsx, ?z_hlk)~=?z_hsw)" (is "?z_hzw~=_")
            by (rule subst [where P="(\<lambda>zenon_Vukd. (isa'dotdot(zenon_Vukd, ?z_hlk)~=?z_hsw))", OF z_Hzo], fact z_Hzn)
            have z_Hbab: "(?z_hsw~=?z_hsw)"
            by (rule subst [where P="(\<lambda>zenon_Vvkd. (isa'dotdot(?z_hsx, zenon_Vvkd)~=?z_hsw))", OF z_How], fact z_Hzv)
            thus "(?z_hsw~=?z_hsw)" .
           qed
          qed
          have z_Hzk: "?z_hzk"
          by (rule subst [where P="(\<lambda>zenon_Vwkd. ((CHOOSE x:(~((x \\in ?z_hml)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, (a_jhash_primea +  -.(1))))=>bAll(?z_hml, (\<lambda>q. ((a_Ahash_primea[x]) <= (a_Ahash_primea[q])))))))]) <= (a_Ahash_primea[x]))))) \\in zenon_Vwkd))", OF z_Hzm], fact z_Hyw)
          thus "?z_hzk" .
         qed
        next
         assume z_Hrr:"?z_hrr"
         show FALSE
         by (rule zenon_L22_ [OF z_Hrp z_Hrr z_Hbe])
        qed
       qed
      next
       assume z_Hej:"(~?z_hek)"
       show FALSE
       by (rule zenon_L9_ [OF z_Hbc z_Hej z_Hfd z_Hbe z_Hbo z_Hfm])
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L24_: "bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])])))))) ==> (pc=''Lbl_2'') ==> (~(((a_ihash_primea \\in isa'dotdot(1, N))&((a_jhash_primea \\in isa'dotdot(1, N))&((a_Ahash_primea \\in FuncSet(isa'dotdot(1, N), Int))&((a_A0hash_primea \\in FuncSet(isa'dotdot(1, N), Int))&(a_pchash_primea \\in {''Lbl_1'', ''Lbl_2'', ''Done''})))))&(((a_pchash_primea=''Lbl_1'')=>(bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>j_1. bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))&(((a_pchash_primea=''Lbl_2'')=>((a_jhash_primea \\in isa'dotdot(1, (a_ihash_primea + 1)))&((a_ihash_primea < N)&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&(bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>p. bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>q. ((p <= q)=>((a_Ahash_primea[p]) <= (a_Ahash_primea[q])))))))&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>p. bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[p]) <= (a_Ahash_primea[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))))))&((a_pchash_primea=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])])))))))))))) ==> (a_pchash_primea=pc) ==> (a_A0hash_primea=a_A0a) ==> (a_A0a \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_Ahash_primea=A) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_jhash_primea=j) ==> (j \\in isa'dotdot(1, N)) ==> (a_ihash_primea=i) ==> (i \\in isa'dotdot(1, N)) ==> ((pc=''Lbl_2'')=>((j \\in isa'dotdot(1, (i + 1)))&((i < N)&(bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((A[j_1]) <= (A[k])))))))&(bAll(isa'dotdot(j, (i + 1)), (\<lambda>p. bAll(isa'dotdot(j, (i + 1)), (\<lambda>q. ((p <= q)=>((A[p]) <= (A[q])))))))&(bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>p. bAll(isa'dotdot((j + 1), (i + 1)), (\<lambda>q. ((A[p]) <= (A[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])])))))))))))) ==> FALSE" (is "?z_hbaj ==> ?z_hmy ==> ?z_hbap ==> ?z_hbz ==> ?z_hbo ==> ?z_hbm ==> ?z_hbe ==> ?z_hbc ==> ?z_hv ==> ?z_ht ==> ?z_hl ==> ?z_hj ==> ?z_hbax ==> FALSE")
 proof -
  assume z_Hbaj:"?z_hbaj"
  assume z_Hmy:"?z_hmy" (is "_=?z_hbv")
  assume z_Hbap:"?z_hbap" (is "~(?z_hbar&?z_hbav)")
  assume z_Hbz:"?z_hbz"
  assume z_Hbo:"?z_hbo"
  assume z_Hbm:"?z_hbm"
  assume z_Hbe:"?z_hbe"
  assume z_Hbc:"?z_hbc"
  assume z_Hv:"?z_hv"
  assume z_Ht:"?z_ht"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hbax:"?z_hbax" (is "_=>?z_hbay")
  have z_Hbbv_z_Hbaj: "(\\E x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) == ?z_hbaj" (is "?z_hbbv == _")
  by (unfold bEx_def)
  have z_Hbbv: "?z_hbbv" (is "\\E x : ?z_hbbw(x)")
  by (unfold z_Hbbv_z_Hbaj, fact z_Hbaj)
  have z_Hbbx: "?z_hbbw((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))))" (is "?z_hfd&?z_hfm")
  by (rule zenon_ex_choose_0 [of "?z_hbbw", OF z_Hbbv])
  have z_Hfd: "?z_hfd"
  by (rule zenon_and_0 [OF z_Hbbx])
  have z_Hfm: "?z_hfm" (is "_=?z_hfn")
  by (rule zenon_and_1 [OF z_Hbbx])
  show FALSE
  proof (rule zenon_imply [OF z_Hbax])
   assume z_Hbby:"(pc~=?z_hbv)"
   show FALSE
   by (rule notE [OF z_Hbby z_Hmy])
  next
   assume z_Hbay:"?z_hbay" (is "?z_hsi&?z_hbaz")
   have z_Hsi: "?z_hsi"
   by (rule zenon_and_0 [OF z_Hbay])
   have z_Hbaz: "?z_hbaz" (is "?z_hsk&?z_hbba")
   by (rule zenon_and_1 [OF z_Hbay])
   have z_Hsk: "?z_hsk"
   by (rule zenon_and_0 [OF z_Hbaz])
   have z_Hbba: "?z_hbba" (is "?z_hbbb&?z_hbbi")
   by (rule zenon_and_1 [OF z_Hbaz])
   have z_Hbbb: "?z_hbbb"
   by (rule zenon_and_0 [OF z_Hbba])
   have z_Hbbi: "?z_hbbi" (is "?z_hbbj&?z_hbbq")
   by (rule zenon_and_1 [OF z_Hbba])
   have z_Hbbj: "?z_hbbj"
   by (rule zenon_and_0 [OF z_Hbbi])
   have z_Hbbq: "?z_hbbq" (is "?z_hbbr&_")
   by (rule zenon_and_1 [OF z_Hbbi])
   have z_Hbbr: "?z_hbbr"
   by (rule zenon_and_0 [OF z_Hbbq])
   have z_Hsl_z_Hbbb: "(\\A x:((x \\in isa'dotdot(1, (j +  -.(1))))=>bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) == ?z_hbbb" (is "?z_hsl == _")
   by (unfold bAll_def)
   have z_Hsl: "?z_hsl" (is "\\A x : ?z_htb(x)")
   by (unfold z_Hsl_z_Hbbb, fact z_Hbbb)
   have z_Hsp_z_Hbbj: "(\\A x:((x \\in isa'dotdot(j, (i + 1)))=>bAll(isa'dotdot(j, (i + 1)), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) == ?z_hbbj" (is "?z_hsp == _")
   by (unfold bAll_def)
   have z_Hsp: "?z_hsp" (is "\\A x : ?z_htc(x)")
   by (unfold z_Hsp_z_Hbbj, fact z_Hbbj)
   have z_Hst_z_Hbbr: "(\\A x:((x \\in isa'dotdot(1, (j +  -.(1))))=>bAll(isa'dotdot((j + 1), (i + 1)), (\<lambda>q. ((A[x]) <= (A[q])))))) == ?z_hbbr" (is "?z_hst == _")
   by (unfold bAll_def)
   have z_Hst: "?z_hst" (is "\\A x : ?z_htd(x)")
   by (unfold z_Hst_z_Hbbr, fact z_Hbbr)
   show FALSE
   proof (rule zenon_notand [OF z_Hbap])
    assume z_Hbbz:"(~?z_hbar)" (is "~(?z_he&?z_hbas)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbbz])
     assume z_Hd:"(~?z_he)"
     show FALSE
     by (rule zenon_L1_ [OF z_Hd z_Hj z_Hl])
    next
     assume z_Hbca:"(~?z_hbas)" (is "~(?z_hr&?z_hbat)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbca])
      assume z_Hq:"(~?z_hr)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hq z_Ht z_Hv])
     next
      assume z_Hbcb:"(~?z_hbat)" (is "~(?z_hy&?z_hbau)")
      show FALSE
      proof (rule zenon_notand [OF z_Hbcb])
       assume z_Hx:"(~?z_hy)"
       show FALSE
       by (rule zenon_L3_ [OF z_Hx z_Hbc z_Hbe])
      next
       assume z_Hbcc:"(~?z_hbau)" (is "~(?z_hbk&?z_hbr)")
       show FALSE
       proof (rule zenon_notand [OF z_Hbcc])
        assume z_Hbj:"(~?z_hbk)"
        show FALSE
        by (rule zenon_L4_ [OF z_Hbj z_Hbm z_Hbo])
       next
        assume z_Hbq:"(~?z_hbr)"
        show FALSE
        by (rule zenon_L13_ [OF z_Hbq z_Hmy z_Hbz])
       qed
      qed
     qed
    qed
   next
    assume z_Hbcd:"(~?z_hbav)" (is "~(?z_hiu&?z_hbaw)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbcd])
     assume z_Hit:"(~?z_hiu)" (is "~(?z_hcc=>?z_hiv)")
     show FALSE
     by (rule zenon_L14_ [OF z_Hit z_Hbz z_Hmy])
    next
     assume z_Hbce:"(~?z_hbaw)" (is "~(?z_hlf&?z_hmr)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbce])
      assume z_Hle:"(~?z_hlf)" (is "~(?z_hlg=>?z_hlh)")
      show FALSE
      by (rule zenon_L23_ [OF z_Hle z_Hsi z_Hl z_Hv z_Hsk z_Hsl z_Hbe z_Hsp z_Hst z_Hbc z_Hfd z_Hbo z_Hfm])
     next
      assume z_Hmq:"(~?z_hmr)" (is "~(?z_hms=>?z_hmt)")
      have z_Hms: "?z_hms" (is "_=?z_hbw")
      by (rule zenon_notimply_0 [OF z_Hmq])
      have z_Hbcf: "(?z_hbw~=?z_hbv)"
      by auto
      have z_Hmp: "(a_pchash_primea~=pc)"
      by (rule zenon_stringdiffll [OF z_Hbcf z_Hms z_Hmy])
       show FALSE
       by (rule notE [OF z_Hmp z_Hbz])
     qed
    qed
   qed
  qed
 qed
 have zenon_L25_: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hbcg ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hbcg:"?z_hbcg" (is "?z_hbch~=?z_hbcu")
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule zenon_noteq [of "?z_hbcu"])
   have z_Hbf: "(A=a_Ahash_primea)"
   by (rule sym [OF z_Hbe])
   have z_Hbcv: "(?z_hbcu~=?z_hbcu)"
   by (rule subst [where P="(\<lambda>zenon_Vxkd. ((zenon_Vxkd[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])~=?z_hbcu))", OF z_Hbf], fact z_Hbcg)
   thus "(?z_hbcu~=?z_hbcu)" .
  qed
 qed
 have zenon_L26_: "(~((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))]))) ==> ((A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))])) ==> (a_Ahash_primea=A) ==> FALSE" (is "?z_hbda ==> ?z_hbdc ==> ?z_hbe ==> FALSE")
 proof -
  assume z_Hbda:"?z_hbda" (is "~?z_hbdb")
  assume z_Hbdc:"?z_hbdc"
  assume z_Hbe:"?z_hbe"
  show FALSE
  proof (rule notE [OF z_Hbda])
   have z_Hbde: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]))" (is "?z_hbdd=?z_hbct")
   proof (rule zenon_nnpp [of "(?z_hbdd=?z_hbct)"])
    assume z_Hbdf:"(?z_hbdd~=?z_hbct)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hbct"])
     have z_Hbf: "(A=a_Ahash_primea)"
     by (rule sym [OF z_Hbe])
     have z_Hbdg: "(?z_hbct~=?z_hbct)"
     by (rule subst [where P="(\<lambda>zenon_Vykd. ((zenon_Vykd[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))])~=?z_hbct))", OF z_Hbf], fact z_Hbdf)
     thus "(?z_hbct~=?z_hbct)" .
    qed
   qed
   have z_Hbdl: "((A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hbct <= (a_Ahash_primea[x]))))))])=(a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>(?z_hbct <= (a_Ahash_primea[x]))))))]))" (is "?z_hbch=?z_hbcu")
   proof (rule zenon_nnpp [of "(?z_hbch=?z_hbcu)"])
    assume z_Hbcg:"(?z_hbch~=?z_hbcu)"
    show FALSE
    by (rule zenon_L25_ [OF z_Hbcg z_Hbe])
   qed
   have z_Hbdm: "(?z_hbct <= ?z_hbch)" (is "?z_hbdm")
   by (rule subst [where P="(\<lambda>zenon_Vzkd. (zenon_Vzkd <= ?z_hbch))", OF z_Hbde], fact z_Hbdc)
   have z_Hbdb: "?z_hbdb"
   by (rule subst [where P="(\<lambda>zenon_Vald. (?z_hbct <= zenon_Vald))", OF z_Hbdl], fact z_Hbdm)
   thus "?z_hbdb" .
  qed
 qed
 have zenon_L27_: "(~((a_pchash_primea=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))) ==> (\\A x:((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) ==> (a_Ahash_primea=A) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> ((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1]))))))))) ==> (a_A0hash_primea=a_A0a) ==> (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])]))))))[i_1])])))) ==> FALSE" (is "?z_hmq ==> ?z_hbdt ==> ?z_hbe ==> ?z_hbc ==> ?z_hfd ==> ?z_hbo ==> ?z_hfm ==> FALSE")
 proof -
  assume z_Hmq:"?z_hmq" (is "~(?z_hms=>?z_hmt)")
  assume z_Hbdt:"?z_hbdt" (is "\\A x : ?z_hbdw(x)")
  assume z_Hbe:"?z_hbe"
  assume z_Hbc:"?z_hbc"
  assume z_Hfd:"?z_hfd"
  assume z_Hbo:"?z_hbo"
  assume z_Hfm:"?z_hfm" (is "_=?z_hfn")
  have z_Hbdx: "(~?z_hmt)" (is "~(?z_hmu&?z_hek)")
  by (rule zenon_notimply_1 [OF z_Hmq])
  show FALSE
  proof (rule zenon_notand [OF z_Hbdx])
   assume z_Hbdy:"(~?z_hmu)"
   have z_Hbdz_z_Hbdy: "(~(\\A x:((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) == (~?z_hmu)" (is "?z_hbdz == ?z_hbdy")
   by (unfold bAll_def)
   have z_Hbdz: "?z_hbdz" (is "~(\\A x : ?z_hbeb(x))")
   by (unfold z_Hbdz_z_Hbdy, fact z_Hbdy)
   have z_Hbec: "(\\E x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))" (is "\\E x : ?z_hbed(x)")
   by (rule zenon_notallex_0 [of "?z_hbeb", OF z_Hbdz])
   have z_Hbee: "?z_hbed((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "~(?z_hbef=>?z_hbeg)")
   by (rule zenon_ex_choose_0 [of "?z_hbed", OF z_Hbec])
   have z_Hbef: "?z_hbef"
   by (rule zenon_notimply_0 [OF z_Hbee])
   have z_Hbeh: "(~?z_hbeg)"
   by (rule zenon_notimply_1 [OF z_Hbee])
   have z_Hbei_z_Hbeh: "(~(\\A x:((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))) == (~?z_hbeg)" (is "?z_hbei == ?z_hbeh")
   by (unfold bAll_def)
   have z_Hbei: "?z_hbei" (is "~(\\A x : ?z_hbek(x))")
   by (unfold z_Hbei_z_Hbeh, fact z_Hbeh)
   have z_Hbel: "(\\E x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))" (is "\\E x : ?z_hbem(x)")
   by (rule zenon_notallex_0 [of "?z_hbek", OF z_Hbei])
   have z_Hben: "?z_hbem((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "~(?z_hbeo=>?z_hbep)")
   by (rule zenon_ex_choose_0 [of "?z_hbem", OF z_Hbel])
   have z_Hbeo: "?z_hbeo"
   by (rule zenon_notimply_0 [OF z_Hben])
   have z_Hbeq: "(~?z_hbep)" (is "~(?z_hber=>?z_hbdb)")
   by (rule zenon_notimply_1 [OF z_Hben])
   have z_Hber: "?z_hber"
   by (rule zenon_notimply_0 [OF z_Hbeq])
   have z_Hbda: "(~?z_hbdb)"
   by (rule zenon_notimply_1 [OF z_Hbeq])
   have z_Hbes: "?z_hbdw((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))))" (is "_=>?z_hbet")
   by (rule zenon_all_0 [of "?z_hbdw" "(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))", OF z_Hbdt])
   show FALSE
   proof (rule zenon_imply [OF z_Hbes])
    assume z_Hbeu:"(~?z_hbef)"
    show FALSE
    by (rule notE [OF z_Hbeu z_Hbef])
   next
    assume z_Hbet:"?z_hbet"
    have z_Hbev_z_Hbet: "(\\A x:((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((A[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (A[x]))))) == ?z_hbet" (is "?z_hbev == _")
    by (unfold bAll_def)
    have z_Hbev: "?z_hbev" (is "\\A x : ?z_hbez(x)")
    by (unfold z_Hbev_z_Hbet, fact z_Hbet)
    have z_Hbfa: "?z_hbez((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x])))))))" (is "_=>?z_hbfb")
    by (rule zenon_all_0 [of "?z_hbez" "(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>(((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k])))))))) <= x)=>((a_Ahash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((a_Ahash_primea[x]) <= (a_Ahash_primea[k]))))))))]) <= (a_Ahash_primea[x]))))))", OF z_Hbev])
    show FALSE
    proof (rule zenon_imply [OF z_Hbfa])
     assume z_Hbfc:"(~?z_hbeo)"
     show FALSE
     by (rule notE [OF z_Hbfc z_Hbeo])
    next
     assume z_Hbfb:"?z_hbfb" (is "_=>?z_hbdc")
     show FALSE
     proof (rule zenon_imply [OF z_Hbfb])
      assume z_Hbfd:"(~?z_hber)"
      show FALSE
      by (rule notE [OF z_Hbfd z_Hber])
     next
      assume z_Hbdc:"?z_hbdc"
      show FALSE
      by (rule zenon_L26_ [OF z_Hbda z_Hbdc z_Hbe])
     qed
    qed
   qed
  next
   assume z_Hej:"(~?z_hek)"
   show FALSE
   by (rule zenon_L9_ [OF z_Hbc z_Hej z_Hfd z_Hbe z_Hbo z_Hfm])
  qed
 qed
 have zenon_L28_: "bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])])))))) ==> (pc=''Done'') ==> (~(((a_ihash_primea \\in isa'dotdot(1, N))&((a_jhash_primea \\in isa'dotdot(1, N))&((a_Ahash_primea \\in FuncSet(isa'dotdot(1, N), Int))&((a_A0hash_primea \\in FuncSet(isa'dotdot(1, N), Int))&(a_pchash_primea \\in {''Lbl_1'', ''Lbl_2'', ''Done''})))))&(((a_pchash_primea=''Lbl_1'')=>(bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>j_1. bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))&(((a_pchash_primea=''Lbl_2'')=>((a_jhash_primea \\in isa'dotdot(1, (a_ihash_primea + 1)))&((a_ihash_primea < N)&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&(bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>p. bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>q. ((p <= q)=>((a_Ahash_primea[p]) <= (a_Ahash_primea[q])))))))&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>p. bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[p]) <= (a_Ahash_primea[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))))))&((a_pchash_primea=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])])))))))))))) ==> (a_pchash_primea=pc) ==> (a_A0hash_primea=a_A0a) ==> (a_A0a \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_Ahash_primea=A) ==> (A \\in FuncSet(isa'dotdot(1, N), Int)) ==> (a_jhash_primea=j) ==> (j \\in isa'dotdot(1, N)) ==> (a_ihash_primea=i) ==> (i \\in isa'dotdot(1, N)) ==> ((pc=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((A[j_1]) <= (A[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])])))))))) ==> FALSE" (is "?z_hbaj ==> ?z_hbfe ==> ?z_hbap ==> ?z_hbz ==> ?z_hbo ==> ?z_hbm ==> ?z_hbe ==> ?z_hbc ==> ?z_hv ==> ?z_ht ==> ?z_hl ==> ?z_hj ==> ?z_hbff ==> FALSE")
 proof -
  assume z_Hbaj:"?z_hbaj"
  assume z_Hbfe:"?z_hbfe" (is "_=?z_hbw")
  assume z_Hbap:"?z_hbap" (is "~(?z_hbar&?z_hbav)")
  assume z_Hbz:"?z_hbz"
  assume z_Hbo:"?z_hbo"
  assume z_Hbm:"?z_hbm"
  assume z_Hbe:"?z_hbe"
  assume z_Hbc:"?z_hbc"
  assume z_Hv:"?z_hv"
  assume z_Ht:"?z_ht"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hbff:"?z_hbff" (is "_=>?z_hbfg")
  have z_Hbbv_z_Hbaj: "(\\E x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) == ?z_hbaj" (is "?z_hbbv == _")
  by (unfold bEx_def)
  have z_Hbbv: "?z_hbbv" (is "\\E x : ?z_hbbw(x)")
  by (unfold z_Hbbv_z_Hbaj, fact z_Hbaj)
  have z_Hbbx: "?z_hbbw((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))))" (is "?z_hfd&?z_hfm")
  by (rule zenon_ex_choose_0 [of "?z_hbbw", OF z_Hbbv])
  have z_Hfd: "?z_hfd"
  by (rule zenon_and_0 [OF z_Hbbx])
  have z_Hfm: "?z_hfm" (is "_=?z_hfn")
  by (rule zenon_and_1 [OF z_Hbbx])
  show FALSE
  proof (rule zenon_imply [OF z_Hbff])
   assume z_Hbfk:"(pc~=?z_hbw)"
   show FALSE
   by (rule notE [OF z_Hbfk z_Hbfe])
  next
   assume z_Hbfg:"?z_hbfg" (is "?z_hbfh&_")
   have z_Hbfh: "?z_hbfh"
   by (rule zenon_and_0 [OF z_Hbfg])
   have z_Hbdt_z_Hbfh: "(\\A x:((x \\in isa'dotdot(1, N))=>bAll(isa'dotdot(1, N), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) == ?z_hbfh" (is "?z_hbdt == _")
   by (unfold bAll_def)
   have z_Hbdt: "?z_hbdt" (is "\\A x : ?z_hbdw(x)")
   by (unfold z_Hbdt_z_Hbfh, fact z_Hbfh)
   show FALSE
   proof (rule zenon_notand [OF z_Hbap])
    assume z_Hbbz:"(~?z_hbar)" (is "~(?z_he&?z_hbas)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbbz])
     assume z_Hd:"(~?z_he)"
     show FALSE
     by (rule zenon_L1_ [OF z_Hd z_Hj z_Hl])
    next
     assume z_Hbca:"(~?z_hbas)" (is "~(?z_hr&?z_hbat)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbca])
      assume z_Hq:"(~?z_hr)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hq z_Ht z_Hv])
     next
      assume z_Hbcb:"(~?z_hbat)" (is "~(?z_hy&?z_hbau)")
      show FALSE
      proof (rule zenon_notand [OF z_Hbcb])
       assume z_Hx:"(~?z_hy)"
       show FALSE
       by (rule zenon_L3_ [OF z_Hx z_Hbc z_Hbe])
      next
       assume z_Hbcc:"(~?z_hbau)" (is "~(?z_hbk&?z_hbr)")
       show FALSE
       proof (rule zenon_notand [OF z_Hbcc])
        assume z_Hbj:"(~?z_hbk)"
        show FALSE
        by (rule zenon_L4_ [OF z_Hbj z_Hbm z_Hbo])
       next
        assume z_Hbq:"(~?z_hbr)"
        have z_Hmz: "(~(a_pchash_primea \\in {''Lbl_2'', ?z_hbw}))" (is "~?z_hna")
        by (rule zenon_notin_addElt_1 [of "a_pchash_primea" "''Lbl_1''" "{''Lbl_2'', ?z_hbw}", OF z_Hbq])
        have z_Hbfl: "(~(a_pchash_primea \\in {?z_hbw}))" (is "~?z_hbfm")
        by (rule zenon_notin_addElt_1 [of "a_pchash_primea" "''Lbl_2''" "{?z_hbw}", OF z_Hmz])
        have z_Hbfn: "(a_pchash_primea~=?z_hbw)"
        by (rule zenon_notin_addElt_0 [of "a_pchash_primea" "?z_hbw" "{}", OF z_Hbfl])
        show FALSE
        proof (rule notE [OF z_Hbfn])
         have z_Hms: "(a_pchash_primea=?z_hbw)"
         by (rule subst [where P="(\<lambda>zenon_Vgjd. (a_pchash_primea=zenon_Vgjd))", OF z_Hbfe], fact z_Hbz)
         thus "(a_pchash_primea=?z_hbw)" .
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hbcd:"(~?z_hbav)" (is "~(?z_hiu&?z_hbaw)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbcd])
     assume z_Hit:"(~?z_hiu)" (is "~(?z_hcc=>?z_hiv)")
     have z_Hcc: "?z_hcc" (is "_=?z_hbu")
     by (rule zenon_notimply_0 [OF z_Hit])
     have z_Hbfp: "(?z_hbu~=?z_hbw)"
     by auto
     have z_Hmp: "(a_pchash_primea~=pc)"
     by (rule zenon_stringdiffll [OF z_Hbfp z_Hcc z_Hbfe])
      show FALSE
      by (rule notE [OF z_Hmp z_Hbz])
    next
     assume z_Hbce:"(~?z_hbaw)" (is "~(?z_hlf&?z_hmr)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbce])
      assume z_Hle:"(~?z_hlf)" (is "~(?z_hlg=>?z_hlh)")
      have z_Hlg: "?z_hlg" (is "_=?z_hbv")
      by (rule zenon_notimply_0 [OF z_Hle])
      have z_Hbfq: "(?z_hbv~=?z_hbw)"
      by auto
      have z_Hmp: "(a_pchash_primea~=pc)"
      by (rule zenon_stringdiffll [OF z_Hbfq z_Hlg z_Hbfe])
       show FALSE
       by (rule notE [OF z_Hmp z_Hbz])
     next
      assume z_Hmq:"(~?z_hmr)" (is "~(?z_hms=>?z_hmt)")
      show FALSE
      by (rule zenon_L27_ [OF z_Hmq z_Hbdt z_Hbe z_Hbc z_Hfd z_Hbo z_Hfm])
     qed
    qed
   qed
  qed
 qed
 assume z_Hc:"(~(((((i \\in isa'dotdot(1, N))&((j \\in isa'dotdot(1, N))&((A \\in FuncSet(isa'dotdot(1, N), Int))&((a_A0a \\in FuncSet(isa'dotdot(1, N), Int))&(pc \\in {''Lbl_1'', ''Lbl_2'', ''Done''})))))&(((pc=''Lbl_1'')=>(bAll(isa'dotdot(1, i), (\<lambda>j_1. bAll(isa'dotdot(1, i), (\<lambda>k. ((j_1 <= k)=>((A[j_1]) <= (A[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])]))))))))&(((pc=''Lbl_2'')=>((j \\in isa'dotdot(1, (i + 1)))&((i < N)&(bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((A[j_1]) <= (A[k])))))))&(bAll(isa'dotdot(j, (i + 1)), (\<lambda>p. bAll(isa'dotdot(j, (i + 1)), (\<lambda>q. ((p <= q)=>((A[p]) <= (A[q])))))))&(bAll(isa'dotdot(1, (j +  -.(1))), (\<lambda>p. bAll(isa'dotdot((j + 1), (i + 1)), (\<lambda>q. ((A[p]) <= (A[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])]))))))))))))&((pc=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((A[j_1]) <= (A[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(f[i_1])])))))))))))&((a_Ahash_primea=A)&((a_A0hash_primea=a_A0a)&((a_ihash_primea=i)&((a_jhash_primea=j)&(a_pchash_primea=pc))))))=>(((a_ihash_primea \\in isa'dotdot(1, N))&((a_jhash_primea \\in isa'dotdot(1, N))&((a_Ahash_primea \\in FuncSet(isa'dotdot(1, N), Int))&((a_A0hash_primea \\in FuncSet(isa'dotdot(1, N), Int))&(a_pchash_primea \\in {''Lbl_1'', ''Lbl_2'', ''Done''})))))&(((a_pchash_primea=''Lbl_1'')=>(bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>j_1. bAll(isa'dotdot(1, a_ihash_primea), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))&(((a_pchash_primea=''Lbl_2'')=>((a_jhash_primea \\in isa'dotdot(1, (a_ihash_primea + 1)))&((a_ihash_primea < N)&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>j_1. bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&(bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>p. bAll(isa'dotdot(a_jhash_primea, (a_ihash_primea + 1)), (\<lambda>q. ((p <= q)=>((a_Ahash_primea[p]) <= (a_Ahash_primea[q])))))))&(bAll(isa'dotdot(1, (a_jhash_primea +  -.(1))), (\<lambda>p. bAll(isa'dotdot((a_jhash_primea + 1), (a_ihash_primea + 1)), (\<lambda>q. ((a_Ahash_primea[p]) <= (a_Ahash_primea[q]))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])]))))))))))))&((a_pchash_primea=''Done'')=>(bAll(isa'dotdot(1, N), (\<lambda>j_1. bAll(isa'dotdot(1, N), (\<lambda>k. ((j_1 <= k)=>((a_Ahash_primea[j_1]) <= (a_Ahash_primea[k])))))))&bEx(subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))), (\<lambda>f. (a_Ahash_primea=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0hash_primea[(f[i_1])])))))))))))))" (is "~(?z_hbfs=>?z_hbaq)")
 have z_Hbfs: "?z_hbfs" (is "?z_hbft&?z_hbgg")
 by (rule zenon_notimply_0 [OF z_Hc])
 have z_Hbap: "(~?z_hbaq)" (is "~(?z_hbar&?z_hbav)")
 by (rule zenon_notimply_1 [OF z_Hc])
 have z_Hbft: "?z_hbft" (is "?z_hbfu&?z_hbfz")
 by (rule zenon_and_0 [OF z_Hbfs])
 have z_Hbgg: "?z_hbgg" (is "?z_hbe&?z_hbgh")
 by (rule zenon_and_1 [OF z_Hbfs])
 have z_Hbe: "?z_hbe"
 by (rule zenon_and_0 [OF z_Hbgg])
 have z_Hbgh: "?z_hbgh" (is "?z_hbo&?z_hbgi")
 by (rule zenon_and_1 [OF z_Hbgg])
 have z_Hbo: "?z_hbo"
 by (rule zenon_and_0 [OF z_Hbgh])
 have z_Hbgi: "?z_hbgi" (is "?z_hl&?z_hbgj")
 by (rule zenon_and_1 [OF z_Hbgh])
 have z_Hl: "?z_hl"
 by (rule zenon_and_0 [OF z_Hbgi])
 have z_Hbgj: "?z_hbgj" (is "?z_hv&?z_hbz")
 by (rule zenon_and_1 [OF z_Hbgi])
 have z_Hv: "?z_hv"
 by (rule zenon_and_0 [OF z_Hbgj])
 have z_Hbz: "?z_hbz"
 by (rule zenon_and_1 [OF z_Hbgj])
 have z_Hbfu: "?z_hbfu" (is "?z_hj&?z_hbfv")
 by (rule zenon_and_0 [OF z_Hbft])
 have z_Hbfz: "?z_hbfz" (is "?z_hbga&?z_hbgf")
 by (rule zenon_and_1 [OF z_Hbft])
 have z_Hbga: "?z_hbga" (is "?z_hbx=>?z_hbgb")
 by (rule zenon_and_0 [OF z_Hbfz])
 have z_Hbgf: "?z_hbgf" (is "?z_hbax&?z_hbff")
 by (rule zenon_and_1 [OF z_Hbfz])
 have z_Hbax: "?z_hbax" (is "?z_hmy=>?z_hbay")
 by (rule zenon_and_0 [OF z_Hbgf])
 have z_Hbff: "?z_hbff" (is "?z_hbfe=>?z_hbfg")
 by (rule zenon_and_1 [OF z_Hbgf])
 have z_Hj: "?z_hj"
 by (rule zenon_and_0 [OF z_Hbfu])
 have z_Hbfv: "?z_hbfv" (is "?z_ht&?z_hbfw")
 by (rule zenon_and_1 [OF z_Hbfu])
 have z_Ht: "?z_ht"
 by (rule zenon_and_0 [OF z_Hbfv])
 have z_Hbfw: "?z_hbfw" (is "?z_hbc&?z_hbfx")
 by (rule zenon_and_1 [OF z_Hbfv])
 have z_Hbc: "?z_hbc"
 by (rule zenon_and_0 [OF z_Hbfw])
 have z_Hbfx: "?z_hbfx" (is "?z_hbm&?z_hbfy")
 by (rule zenon_and_1 [OF z_Hbfw])
 have z_Hbm: "?z_hbm"
 by (rule zenon_and_0 [OF z_Hbfx])
 have z_Hbfy: "?z_hbfy"
 by (rule zenon_and_1 [OF z_Hbfx])
 show FALSE
 proof (rule zenon_in_addElt [of "pc" "''Lbl_1''" "{''Lbl_2'', ''Done''}", OF z_Hbfy])
  assume z_Hbx:"?z_hbx" (is "_=?z_hbu")
  show FALSE
  proof (rule zenon_imply [OF z_Hbga])
   assume z_Hbgk:"(pc~=?z_hbu)"
   show FALSE
   by (rule notE [OF z_Hbgk z_Hbx])
  next
   assume z_Hbgb:"?z_hbgb" (is "?z_hbgc&?z_hbaj")
   have z_Hbgc: "?z_hbgc"
   by (rule zenon_and_0 [OF z_Hbgb])
   have z_Hbaj: "?z_hbaj"
   by (rule zenon_and_1 [OF z_Hbgb])
   have z_Hje_z_Hbgc: "(\\A x:((x \\in isa'dotdot(1, i))=>bAll(isa'dotdot(1, i), (\<lambda>k. ((x <= k)=>((A[x]) <= (A[k]))))))) == ?z_hbgc" (is "?z_hje == _")
   by (unfold bAll_def)
   have z_Hje: "?z_hje" (is "\\A x : ?z_hjn(x)")
   by (unfold z_Hje_z_Hbgc, fact z_Hbgc)
   have z_Hbbv_z_Hbaj: "(\\E x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))) == ?z_hbaj" (is "?z_hbbv == _")
   by (unfold bEx_def)
   have z_Hbbv: "?z_hbbv" (is "\\E x : ?z_hbbw(x)")
   by (unfold z_Hbbv_z_Hbaj, fact z_Hbaj)
   have z_Hbbx: "?z_hbbw((CHOOSE x:((x \\in subsetOf(FuncSet(isa'dotdot(1, N), isa'dotdot(1, N)), (\<lambda>f. bAll(isa'dotdot(1, N), (\<lambda>i_1. bEx(isa'dotdot(1, N), (\<lambda>j_1. ((f[i_1])=(f[j_1])))))))))&(A=Fcn(isa'dotdot(1, N), (\<lambda>i_1. (a_A0a[(x[i_1])])))))))" (is "?z_hfd&?z_hfm")
   by (rule zenon_ex_choose_0 [of "?z_hbbw", OF z_Hbbv])
   have z_Hfd: "?z_hfd"
   by (rule zenon_and_0 [OF z_Hbbx])
   have z_Hfm: "?z_hfm" (is "_=?z_hfn")
   by (rule zenon_and_1 [OF z_Hbbx])
   show FALSE
   proof (rule zenon_notand [OF z_Hbap])
    assume z_Hbbz:"(~?z_hbar)" (is "~(?z_he&?z_hbas)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbbz])
     assume z_Hd:"(~?z_he)"
     show FALSE
     by (rule zenon_L1_ [OF z_Hd z_Hj z_Hl])
    next
     assume z_Hbca:"(~?z_hbas)" (is "~(?z_hr&?z_hbat)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbca])
      assume z_Hq:"(~?z_hr)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hq z_Ht z_Hv])
     next
      assume z_Hbcb:"(~?z_hbat)" (is "~(?z_hy&?z_hbau)")
      show FALSE
      proof (rule zenon_notand [OF z_Hbcb])
       assume z_Hx:"(~?z_hy)"
       show FALSE
       by (rule zenon_L3_ [OF z_Hx z_Hbc z_Hbe])
      next
       assume z_Hbcc:"(~?z_hbau)" (is "~(?z_hbk&?z_hbr)")
       show FALSE
       proof (rule zenon_notand [OF z_Hbcc])
        assume z_Hbj:"(~?z_hbk)"
        show FALSE
        by (rule zenon_L4_ [OF z_Hbj z_Hbm z_Hbo])
       next
        assume z_Hbq:"(~?z_hbr)"
        show FALSE
        by (rule zenon_L5_ [OF z_Hbq z_Hbx z_Hbz])
       qed
      qed
     qed
    qed
   next
    assume z_Hbcd:"(~?z_hbav)" (is "~(?z_hiu&?z_hbaw)")
    show FALSE
    proof (rule zenon_notand [OF z_Hbcd])
     assume z_Hit:"(~?z_hiu)" (is "~(?z_hcc=>?z_hiv)")
     show FALSE
     by (rule zenon_L10_ [OF z_Hit z_Hje z_Hl z_Hbe z_Hbc z_Hfd z_Hbo z_Hfm])
    next
     assume z_Hbce:"(~?z_hbaw)" (is "~(?z_hlf&?z_hmr)")
     show FALSE
     proof (rule zenon_notand [OF z_Hbce])
      assume z_Hle:"(~?z_hlf)" (is "~(?z_hlg=>?z_hlh)")
      show FALSE
      by (rule zenon_L11_ [OF z_Hle z_Hbz z_Hbx])
     next
      assume z_Hmq:"(~?z_hmr)" (is "~(?z_hms=>?z_hmt)")
      show FALSE
      by (rule zenon_L12_ [OF z_Hmq z_Hbz z_Hbx])
     qed
    qed
   qed
  qed
 next
  assume z_Hbgl:"(pc \\in {''Lbl_2'', ''Done''})" (is "?z_hbgl")
  show FALSE
  proof (rule zenon_in_addElt [of "pc" "''Lbl_2''" "{''Done''}", OF z_Hbgl])
   assume z_Hmy:"?z_hmy" (is "_=?z_hbv")
   show FALSE
   proof (rule zenon_imply [OF z_Hbax])
    assume z_Hbby:"(pc~=?z_hbv)"
    show FALSE
    by (rule notE [OF z_Hbby z_Hmy])
   next
    assume z_Hbay:"?z_hbay" (is "?z_hsi&?z_hbaz")
    have z_Hbaz: "?z_hbaz" (is "?z_hsk&?z_hbba")
    by (rule zenon_and_1 [OF z_Hbay])
    have z_Hbba: "?z_hbba" (is "?z_hbbb&?z_hbbi")
    by (rule zenon_and_1 [OF z_Hbaz])
    have z_Hbbi: "?z_hbbi" (is "?z_hbbj&?z_hbbq")
    by (rule zenon_and_1 [OF z_Hbba])
    have z_Hbbq: "?z_hbbq" (is "?z_hbbr&?z_hbaj")
    by (rule zenon_and_1 [OF z_Hbbi])
    have z_Hbaj: "?z_hbaj"
    by (rule zenon_and_1 [OF z_Hbbq])
    show FALSE
    by (rule zenon_L24_ [OF z_Hbaj z_Hmy z_Hbap z_Hbz z_Hbo z_Hbm z_Hbe z_Hbc z_Hv z_Ht z_Hl z_Hj z_Hbax])
   qed
  next
   assume z_Hbgm:"(pc \\in {''Done''})" (is "?z_hbgm")
   show FALSE
   proof (rule zenon_in_addElt [of "pc" "''Done''" "{}", OF z_Hbgm])
    assume z_Hbfe:"?z_hbfe" (is "_=?z_hbw")
    show FALSE
    proof (rule zenon_imply [OF z_Hbff])
     assume z_Hbfk:"(pc~=?z_hbw)"
     show FALSE
     by (rule notE [OF z_Hbfk z_Hbfe])
    next
     assume z_Hbfg:"?z_hbfg" (is "?z_hbfh&?z_hbaj")
     have z_Hbaj: "?z_hbaj"
     by (rule zenon_and_1 [OF z_Hbfg])
     show FALSE
     by (rule zenon_L28_ [OF z_Hbaj z_Hbfe z_Hbap z_Hbz z_Hbo z_Hbm z_Hbe z_Hbc z_Hv z_Ht z_Hl z_Hj z_Hbff])
    qed
   next
    assume z_Hbgn:"(pc \\in {})" (is "?z_hbgn")
    show FALSE
    by (rule zenon_in_emptyset [of "pc", OF z_Hbgn])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 16"; *} qed
end

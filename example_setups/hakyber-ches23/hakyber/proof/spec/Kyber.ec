require import AllCore IntDiv FloorCeil StdOrder RealExp List.
require import ZModP Ring.
require import Distr DList DistrExtra DMap DInterval.
require import PKE_Ext.
from Jasmin require import JWord JUtils.
require import Array25 Array32 Array34 Array64 Array128 Array168 Array256 Array384.
require import Array768 Array960 Array1024 Array1088 Array1184 Array1152.
require  PRF.

require import KyberLib.
import BitEncoding BitChunking BS2Int.


(*---*) import RField RealOrder IntOrder IntID.


(****************************************************)
(*               The finite field Zq/Fq             *)
(****************************************************)

op q : int = 3329 axiomatized by qE.
axiom prime_q : prime q.

clone import ZModField as Zq with 
  op p <- q 
  rename "zmod" as "Fq"
  rename "ZModp" as "Zq"
  proof  prime_p by apply prime_q.

require import Fastexp.

clone include Fastexp with
  type CR.t <- Fq,
  op CR.zeror <- Zq.zero,
  op CR.oner <- Zq.one,
  op CR.(+) <- Zq.(+),
  op CR.([ - ]) <- Zq.([-]),
  op CR.( * ) <- Zq.( * ),
  op CR.invr  <- Zq.inv,
  op CR.exp  <- ZqField.exp,
  op CR.ofint <- ZqField.ofint,
  pred CR.unit  <- Zq.unit
proof *.

realize CR.addrA by apply Zq.ZqRing.addrA.
realize CR.addrC by apply Zq.ZqRing.addrC.
realize CR.add0r by apply Zq.ZqRing.add0r.
realize CR.addNr by apply Zq.ZqRing.addNr.
realize CR.oner_neq0 by apply Zq.ZqRing.oner_neq0.
realize CR.mulrA by apply Zq.ZqRing.mulrA.
realize CR.mulrC by apply Zq.ZqRing.mulrC.
realize CR.mul1r by apply Zq.ZqRing.mul1r.
realize CR.mulrDl by apply Zq.ZqRing.mulrDl.
realize CR.mulVr by apply Zq.ZqRing.mulVr.
realize CR.unitP by apply Zq.ZqRing.unitP.
realize CR.unitout by apply Zq.ZqRing.unitout.

(* Signed representation: could go in Fq *)

op as_sint(x : Fq) = if (q-1) %/ 2 < asint x then asint x - q else asint x.

lemma as_sintK x:
 inFq (as_sint x) = x.
proof. by rewrite /as_sint; smt(@Zq). qed.

lemma inFqK_sint_small n: 
 - (q-1) %/ 2 <= n <= (q-1) %/ 2 =>
 as_sint (inFq n) = n.
proof. move=> H; rewrite /as_sint; smt(@Zq). qed.

lemma as_sintN (x: Fq): as_sint (-x) = - as_sint x.
proof. by rewrite /as_sint oppE; smt(@Zq). qed.

lemma as_sint_range x :  - (q-1) %/2 <= as_sint x <= (q-1) %/2 by smt(rg_asint).

lemma as_sint_bounded x y eps:
`| asint x - asint y | <= eps
 => `| as_sint (x-y) | <= eps.
proof.
rewrite !normP; move=> [Hl Hr].
smt(@Zq).
qed.


abbrev absZq (x: Fq): int = `| as_sint x |.

lemma absZqB x y eps:
 `| asint x - asint y | <= eps => absZq (x-y) <= eps
by apply as_sint_bounded.

lemma absZqP x eps:
 absZq x <= eps 
 <=> (asint x <= eps \/ q - eps <= asint x)
by smt(rg_asint).

(* Compress-error bound *)
op Bq d = round (q%r / (2^(d+1))%r).

lemma nosmt Bq_le_half d:
 0 < d =>
 (q%r / (2^(d+1))%r) <= (q-1)%r/2%r.
proof.
move=> gt0; rewrite /Bq /round //.
rewrite exprS 1:/# fromintM.
have ?: q%r / (2 ^ d)%r + 1%r <= q%r - 1%r. 
 smt(lt_pow expr_gt0).
smt(@Real).
qed.

lemma nosmt dvdzN_q_2d (d: int):
 0 < d =>
 q %% 2^d <> 0.
proof.
elim/natind: d; first smt().
move=> d Hd IH _.
case: (0<d) => HHd; last first.
 by have ->/=/#: d=0 by smt(). 
rewrite exprD_nneg // expr1.
move: (IH HHd); apply contra.
by rewrite -!dvdzE /#.
qed.

lemma nosmt Bq_noties d:
 0 < d =>
 2^d < q =>
 frac (q%r / (2 ^ (d + 1))%r) <> inv 2%r.
proof.
move=> Hd0 Hd.
rewrite exprS 1:/#.
have ->: q%r / (2 * 2 ^ d)%r
         = inv 2%r * q%r / (2 ^ d)%r by smt().
apply frac_halfN.
rewrite !mulrA divrr //= frac_div_eq0.
 smt(expr_gt0).
by apply dvdzN_q_2d.
qed.

lemma nosmt Bq1E: Bq 1 = 832
by rewrite /Bq /= round_divz 1:// qE.

lemma nosmt Bq4E: Bq 4 = 104
by rewrite /Bq /= round_divz 1:// qE.

(* Compression and decompression are used as operations between 
   polynomials over Fq, but we first define the basic operations 
   over coefficients. *)
abbrev comp (d: int, x: real): int = round (x * (2^d)%r / q%r).
op compress(d : int, x : Fq) : int = comp d (asint x)%r %% 2^d.

lemma nosmt comp_bound d x:
 0 < d =>
 2^d < q =>
 x * (2 ^ d)%r / q%r - inv 2%r
 < (comp d x)%r <= x * (2 ^ d)%r / q%r + inv 2%r.
proof. smt(round_bound). qed.

lemma nosmt comp_asint_bound d x:
 0 < d =>
 2^d < q =>
 (asint x)%r * (2 ^ d)%r - q%r / 2%r < q%r * (comp d (asint x)%r)%r
 && q%r * (comp d (asint x)%r)%r <= (asint x)%r * (2 ^ d)%r + q%r / 2%r.
proof. smt(round_bound). qed.

lemma comp_asint_range d x:
 0 < d =>
 2^d < q =>
 0 <= comp d (asint x)%r <= 2^d.
proof.
move=> *; split.
 rewrite -(from_int_round 0); apply round_mono.
 smt(expr_gt0 rg_asint RealOrder.divr_ge0).
move=> _.
have /#: (comp d (asint x)%r)%r < q%r * (2^d)%r / q%r + inv 2%r.
apply (RealOrder.ler_lt_trans ((asint x)%r*(2^d)%r/q%r+ inv 2%r)); first smt(comp_bound).
by rewrite RealOrder.ltr_add2r RealOrder.ltr_pmul2r 1:/# RealOrder.ltr_pmul2r; smt(expr_gt0 rg_asint).
qed.

lemma nosmt comp_over d x:
 0 < d =>
 2^d < q =>
 comp d (asint x)%r = 2^d
 <=> q%r - q%r / (2^(d+1))%r <= (asint x)%r.
proof.
move=> Hd0 Hd.
have ->: (comp d (asint x)%r = 2^d) <=> (2^d <= comp d (asint x)%r) by smt(comp_asint_range).
rewrite le_roundE -RealOrder.ler_subl_addr ler_pdivl_mulr 1:/# RField.mulrBl.
rewrite -eqboolP eq_sym eqboolP.
rewrite RealOrder.ler_subl_addl -RealOrder.ler_subl_addr ler_pdivl_mulr.
 smt(expr_gt0).
by rewrite exprD_nneg 1..2:/# /= fromintM /#.
qed.

lemma nosmt compress0L d x:
 0 < d =>
 2^d < q =>
 q%r - q%r / (2^(d+1))%r <= (asint x)%r =>
 compress d x = 0.
proof.
move=> Hd0 Hd Hx; rewrite /compress.
have ->: comp d (asint x)%r = 2^d.
 by rewrite comp_over // modzz.
by rewrite modzz.
qed.

lemma nosmt compress_small d x:
 0 < d =>
 2^d < q =>
 (asint x)%r < q%r - q%r / (2^(d+1))%r =>
 compress d x = comp d (asint x)%r.
proof.
move=> Hd0 Hd Hx.
rewrite /compress.
rewrite modz_small 2:/# ger0_norm.
 smt(expr_ge0).
have ?: comp d (asint x)%r <> 2^d by rewrite comp_over // /#. 
smt(comp_asint_range).
qed.

lemma nosmt compress1_is0 x:
 compress 1 x = 0 <=> absZq x <= Bq 1.
proof.
have L: forall y m, 0 <= y <= m => y %% m = 0 <=> y=0 \/ y=m.
 move=> y m H; case: (y=m) => E.
  by rewrite E modzz /#.
 by rewrite modz_small /#.
rewrite Bq1E /compress L.
 by apply comp_asint_range => //= /#.
rewrite absZqP qE /= -fromintM round_divz 1:/# /=; congr.
 smt.
smt.
qed.

abbrev decomp (d: int, y: real): int = round (y * q%r / (2^d)%r).
op decompress(d : int, x : int) : Fq = inFq (decomp d x%r).

lemma decompress0 d:
 decompress d 0 = Zq.zero
by rewrite /decompress /= from_int_round.

lemma decomp_bound d x:
 0 < d =>
 2^d < q =>
 0 <= x < 2^d =>
 0 <= decomp d x%r < q.
proof. 
move=> Hd0 Hd Hx; split; 1: by smt(round_bound). 
have H := (round_bound (x%r * q%r / (2 ^ d)%r)).  
move => H0.
have ? : x%r * q%r / (2 ^ d)%r + inv 2%r < q%r; last by smt().
rewrite RField.mulrC RField.mulrA. 
have : x%r * q%r + (2 ^ d)%r * inv 2%r < (2 ^ d)%r * q%r by smt().
have -> : x%r * q%r + (2 ^ d)%r / 2%r =
          (2 ^ d)%r  * (inv (2 ^ d)%r * x%r * q%r + inv 2%r).
   by rewrite RField.mulrDr RField.mulrA RField.mulrA RField.divrr;  smt(gt0_pow2). 
apply RealOrder.ltr_pmul2l.
  smt(expr_gt0).
qed.

lemma decomp_mono d (x y: real):
 0 < d =>
 2^d < q =>
 x <= y =>
 decomp d x <= decomp d y. 
proof.
move=> ???; rewrite /decomp.
apply round_mono.
rewrite -!mulrA ler_pmul2r // mulrC.
smt(RealOrder.divr_gt0 expr_gt0).
qed.

(* These operations introduce a rounding error, which we see additively *)
op compress_err(d : int, c: Fq) : Fq = decompress d (compress d c) - c.

lemma decompress_errE c d : 
   0 < d => 2^d < q => decompress d (compress d c) = c + (compress_err d c)
by rewrite /compress_err => *; ring.

lemma decomp_comp d x:
 0 < d =>
 2^d < q =>
 x - Bq d <= decomp d (comp d x%r)%r <= x + Bq d.
proof.
move=> Hd0 Hd.
have [Hl Hr]:= comp_bound d x%r Hd0 Hd.
have Hl': x%r * (2 ^ d)%r / q%r - inv 2%r <= (comp d x%r)%r by smt().
split.
 move: (decomp_mono d _ _ Hd0 Hd Hl').
 have ->: decomp d (x%r * (2 ^ d)%r / q%r - inv 2%r) = x - Bq d.
  rewrite /decomp.
  have ->: ((x%r * (2 ^ d)%r / q%r - inv 2%r) * q%r / (2 ^ d)%r) = x%r - q%r / (2 ^ (d+1))%r.
   by field; smt(expr_gt0 exprS).
  rewrite roundDz roundN.
   by apply Bq_noties. 
  smt().
 smt().
move=> _.
move: (decomp_mono d _ _ Hd0 Hd Hr).
have ->: decomp d (x%r * (2 ^ d)%r / q%r + inv 2%r) = x + Bq d.
 rewrite /decomp.
 have ->: ((x%r * (2 ^ d)%r / q%r + inv 2%r) * q%r / (2 ^ d)%r) = x%r + q%r / (2 ^ (d+1))%r. 
  by field; smt(expr_gt0 exprS).
 by rewrite roundDz /#.
smt().
qed.

(* This lemma is stated in the Spec *)
lemma compress_decompress d x:
 0 < d =>
 2^d < q =>
 absZq (x - decompress d (compress d x)) <= Bq d.
proof.
move=> Hd0 Hd.
case: ((asint x)%r < q%r - q%r / (2^(d+1))%r).
 move=> Hx; rewrite compress_small //.
 apply absZqB; apply normP.
 have XX: forall (b x y: int), y-b <= x <= y+b => -b <= y-x <= b by smt().
 apply XX. clear XX.
 rewrite inFqK modz_small; last first.
  by apply decomp_comp.
 apply bound_abs.
 apply decomp_bound => //.
 have [_ Hc]:= (comp_bound d (asint x)%r _ _) => //.
 split.
  by apply round_ge0; smt(expr_gt0 rg_asint).
 move => _.
 have /#: (comp d (asint x)%r)%r < (2^d)%r.
 apply (RealOrder.ltr_le_trans ((q%r-q%r / (2 ^ (d + 1))%r) * (2 ^ d)%r / q%r + inv 2%r)) => //.
  apply (RealOrder.ler_lt_trans ((asint x)%r * (2 ^ d)%r / q%r + inv 2%r)) => //.
  apply RealOrder.ltr_add2r.
  rewrite -!mulrA; apply RealOrder.ltr_pmul2r.
   smt(expr_gt0).
  smt().
 rewrite exprS 1:/# fromintM. 
 have ->: (q%r - q%r / (2%r * (2 ^ d)%r)) * (2 ^ d)%r / q%r = (2^d)%r - inv 2%r by field; smt(expr_gt0).
 smt().
move=> Hx.
rewrite compress0L // 1:/# /absZq decompress0 /= ZqField.oppr0 ZqField.addr0.
have ?:= Bq_le_half d.
rewrite /as_sint.
have ?: q%r - q%r / (2 ^ (d + 1))%r <= (asint x)%r by smt().
have ->/=: (q - 1) %/ 2 < asint x.
 rewrite -lerNgt in Hx.
 rewrite divz_floor //.
 have ?: (floor ((q - 1)%r / 2%r))%r < (asint x)%r; last by smt().
 apply (RealOrder.ler_lt_trans ((q - 1)%r / 2%r)).
  by apply floor_le.
 smt().
rewrite ltr0_norm.
 smt(rg_asint).
rewrite IntID.opprB. 
smt(round_bound).
qed.

(* As a corollary we get a bound on the additive error term *)
lemma compress_err_bound (c:Fq) d : 
   0 < d => 2^d < q =>
     `| as_sint (compress_err d c) | <= round (q%r / (2^(d+1))%r).
proof.
move => *.
have ->: compress_err d c 
         = -(c - decompress d (compress d c))%Zq.
 by rewrite decompress_errE //; ring.
rewrite as_sintN normrN.
by apply compress_decompress.
qed.


(*******************************************************)
(* This is an extension of the spec with alternative   *)
(*   ways to compute compression and decompression, as *)
(*   well as defining rounding errors additively       *)
(*******************************************************)

lemma compress_alt_nice c d :
    compress d c = (asint c * 2^d + (q %/ 2)) %/ q %% 2^d.
proof.
move=> *.
rewrite /compress /round ; congr; congr.
have ->: (asint c * 2 ^ d + q %/ 2) %/ q
 = (2*asint c * 2 ^ d + q) %/ (2*q)
by smt().
rewrite divz_floor 1:/#; congr.
field; smt().
qed.

(* This is the implementation of compress d in C/Jasmin for d = 1,4 *)
op compress_alt(d : int, c : Fq) : int =
    (asint c * 2^d + ((q + 1) %/ 2)) * (2^28 %/ q) %/ 2^28 %% 2^d.

lemma compress_alt_compress c d :    
   1 <= d <=4 =>
      compress_alt d c = compress d c.
proof.
move => db; rewrite compress_alt_nice /compress_alt qE =>  /=.
case (d = 1).
+ by move => ->;have ? : all
     (fun x => (x * 2 + 1665) * 80635 %/ 268435456 %% 2 = (x * 2 + 1664) %/ 3329 %% 2) 
        (iota_ 0 3229); [by rewrite -iotaredE //= | smt(mem_iota gtp_asint ge0_asint)].
move => *;case (d = 2).
+ by move => ->;have ? : all
     (fun x => (x * 4 + 1665) * 80635 %/ 268435456 %% 4 = (x * 4 + 1664) %/ 3329 %% 4) 
        (iota_ 0 3229); [by rewrite -iotaredE //= | smt(mem_iota gtp_asint ge0_asint)].
move => *;case (d = 3).
+ by move => ->;have ? : all
     (fun x => (x * 8 + 1665) * 80635 %/ 268435456 %% 8 = (x * 8 + 1664) %/ 3329 %% 8) 
        (iota_ 0 3229); [by rewrite -iotaredE //= | smt(mem_iota gtp_asint ge0_asint)].
move => *;case (d = 4).
+ by move => ->;have ? : all
     (fun x => (x * 16 + 1665) * 80635 %/ 268435456 %% 16 = (x * 16 + 1664) %/ 3329 %% 16) 
        (iota_ 0 3229); [by rewrite -iotaredE //= | smt(mem_iota gtp_asint ge0_asint)].
by smt().
qed.

(* This is the implementation of compress d in C/Jasmin for d = 10 *)
op compress_alt_large (c : Fq) : int = 
   (asint c * 2 ^ 10 + (q + 1) %/ 2) * (2 ^ 32 %/ q) %/ 2 ^ 32 %% 2 ^ 10.

lemma compress_alt_compress_large (c : Fq): 
    compress_alt_large c = compress 10 c.
rewrite compress_alt_nice /compress_alt_large qE =>  /=.
by have ? : all
     (fun x => (x * 1024 + 1665) * 1290167 %/ 4294967296 %% 1024 = (x * 1024 + 1664) %/ 3329 %% 1024) 
        (iota_ 0 3229); [by rewrite -iotaredE //= | smt(mem_iota gtp_asint ge0_asint)].
qed.

(* This is the implementation of decompress d in C/Jasmin *)
op decompress_alt(d : int, c : int) : Fq = 
    inFq (((c * q + 2^(d-1)) %/ 2^d)).

lemma decompress_alt_decompress c d : 
   0 < d => d<=10 =>
    decompress_alt d c = decompress d c.
proof.
move => *.
rewrite /decompress_alt /decompress /round; congr.
rewrite mulrC divz_floor; first smt(expr_gt0).
congr; field; first 2 smt(expr_gt0).
rewrite mulrC mulrA.
have ->: 2 ^ d = 2^(d-1+1) by done.
by rewrite exprS 1:/#; field.
qed.

(** End extension *)

(* Encoding/decoding of Booleans as field elements *)
op trueval : Fq = inFq ((q+1) %/ 2).
op falseval : Fq = Zq.zero.

lemma trueval_int : asint trueval = ((q+1) %/ 2) by smt(@Zq).
lemma falseval_int : asint falseval = 0 by smt(@Zq).

op b_encode(b: bool): Fq =
  if b then trueval else falseval.

lemma b_encode_int (b : bool) :
   asint (b_encode b) = 
    if b then (q+1) %/ 2 else 0 by smt(trueval_int falseval_int).

op b_decode(c: Fq) : bool = ! `| as_sint c| < q %/ 4 + 1.

(* The spec uses compress and decompress to do encode/decode,
   so these should be true *)
lemma b_encode_sem c :
 b_encode c = decompress 1 (if c then 1 else 0)
by rewrite /b_encode -decompress_alt_decompress /decompress_alt //; smt(qE).


lemma b_decode_sem c :
   compress 1 c = if b_decode c then 1 else 0
by rewrite /b_decode -compress_alt_compress /compress_alt //=; smt(qE rg_asint).

(****************************************************)
(*               Distributions over Fq              *)
(*   We will have two views: the operator semantics *)
(*  will be used to reason about security/failures. *)
(*  The equivalent imperative version will be used  *)
(*  to relate the security proof to the implem.     *)
(*  These distrubutions over Fq are then used to    *)
(*  define distributions over poly/R by sampling    *)
(*  each coefficient independently.                 *)
(****************************************************)

(* The binomial distribution over a field element *)

op dshort_elem : Fq distr = dmap (dcbd 2) inFq.

lemma dshort_elem_ll: is_lossless dshort_elem.
proof.
by apply dmap_ll; apply ll_dcbd.
qed.

(* Definition of the support *)
lemma supp_dshort_elem x:
 x \in dshort_elem <=> -2 <= as_sint x <= 2.
proof.
rewrite supp_dmap; split.
 move=> [y []]; rewrite supp_dcbd.
 move=> H ->; rewrite inFqK_sint_small /#.
move=> H; exists (as_sint x); rewrite supp_dcbd.
split => //.
by rewrite as_sintK.
qed.

(* Probability of each value in the support *)
lemma dshort_elem1E_2 : mu1 dshort_elem (inFq 2) = 1%r / 16%r.
proof.
rewrite /dshort_elem (in_dmap1E_can (dcbd 2) _ as_sint).
  by rewrite as_sintK.
 move=> y; rewrite supp_dcbd; move=> ? <-.
 by rewrite inFqK_sint_small /#.
rewrite inFqK_sint_small /q //=.
by rewrite dcbd1E mcbd_2_2.
qed.

lemma dshort_elem1E_m2 : mu1 dshort_elem (inFq (-2)) = 1%r / 16%r.
proof.
rewrite /dshort_elem (in_dmap1E_can (dcbd 2) _ as_sint).
  by rewrite as_sintK.
 move=> y; rewrite supp_dcbd; move=> ? <-.
 by rewrite inFqK_sint_small /#.
rewrite inFqK_sint_small /q //=.
by rewrite dcbd1E mcbd_2_2N.
qed.

lemma dshort_elem1E_1 : mu1 dshort_elem (inFq 1) = 1%r / 4%r.
proof.
rewrite /dshort_elem (in_dmap1E_can (dcbd 2) _ as_sint).
  by rewrite as_sintK.
 move=> y; rewrite supp_dcbd; move=> ? <-.
 by rewrite inFqK_sint_small /#.
rewrite inFqK_sint_small /q //=.
by rewrite dcbd1E mcbd_2_1.
qed.

lemma dshort_elem1E_m1 : mu1 dshort_elem (inFq (-1)) = 1%r / 4%r.
proof.
rewrite /dshort_elem (in_dmap1E_can (dcbd 2) _ as_sint).
  by rewrite as_sintK.
 move=> y; rewrite supp_dcbd; move=> ? <-.
 by rewrite inFqK_sint_small /#.
rewrite inFqK_sint_small /q //=.
by rewrite dcbd1E mcbd_2_1N.
qed.

lemma dshort_elem1E_0 : mu1 dshort_elem (inFq 0) = 3%r / 8%r. 
proof.
rewrite /dshort_elem (in_dmap1E_can (dcbd 2) _ as_sint).
  by rewrite as_sintK.
 move=> y; rewrite supp_dcbd; move=> ? <-.
 by rewrite inFqK_sint_small /#.
rewrite inFqK_sint_small /q //=.
by rewrite dcbd1E mcbd_2_0.
qed.


(* The uniform distribution over a field element *)
op duni_elem : Fq distr = DZmodP.dunifin.

lemma duni_elem_ll: is_lossless duni_elem
 by exact DZmodP.dunifin_ll.

(* Definition of the support *)
lemma supp_duni_elem x:
 0 <= asint x < q <=> x \in duni_elem.
proof.
rewrite /duni_elem DZmodP.dFqE supp_dmap; split.
 move=> H; exists (asint x); split.
  rewrite supp_dinter; smt(rg_asint).
 by rewrite asintK.
move=> [a []]; rewrite supp_dinter => ? ->.
by rewrite inFqK /#.
qed.

(* The probability of each value in the support. *)
op pe = 1%r /q%r.
lemma duni_elem1E x: mu1 duni_elem x = pe.
proof.
rewrite duniform1E_uniq.
 exact DZmodP.Support.enum_uniq.
by rewrite DZmodP.Support.enumP size_map size_range /#.
qed.

lemma duni_elemE: duni_elem = dmap [0..q-1] inFq.
proof.
apply eq_distr => x.
rewrite duni_elem1E dmap1E /(\o) /=.
rewrite (mu_eq_support _ _ (pred1 (asint x))).
 move=> y; rewrite supp_dinter /pred1 => /> *.
 rewrite eqboolP; split.
  by move=> <-; rewrite inFqK modz_small /#.
 by move => ->; rewrite asintK.
by rewrite dinter1E ifT; smt(rg_asint).
qed.

lemma duni_elem_uni : is_uniform duni_elem 
  by rewrite /is_uniform => *; rewrite !duni_elem1E.

lemma duni_elem_fu : is_full duni_elem
  by rewrite /is_full /support => x; rewrite duni_elem1E; smt(qE).

(*****************************************************)
(* Representations of polynomials in Zq[X]/(X^256+1) *)
(*****************************************************)

theory KPoly.

type poly = Fq Array256.t.

op zero : poly = Array256.create Zq.zero.
op one : poly = zero.[0<-Zq.one].

(* Ring multiplication: schoolbook multiplication in this
   ring is essentially generating a square matrix of coefficient
   multiplications and summing over the columns. *)
op (&*) (pa pb : poly) : poly =
  Array256.init (fun (i : int) => foldr (fun (k : int) (ci : Fq) =>
     if (0 <= i - k) 
     then ci + pa.[k] * pb.[i - k] 
     else ci - pa.[k] * pb.[256 + (i - k)]) 
      Zq.zero (iota_ 0 256)).

op (&+) (pa pb : poly) : poly = 
  map2 (fun a b : Fq  => Zq.(+) a b) pa pb.

op (&-) (p : poly) : poly =  map Zq.([-]) p.

(* Compression/decompression of polys *)

op compress_poly(d : int, p : poly) : int Array256.t =  map (compress d) p.

op decompress_poly(d : int, p : int Array256.t) : poly =  map (decompress d) p.

op compress_poly_err(d : int, p : poly) : poly =  map (compress_err d) p.

lemma round_poly_errE p d : p &+ (compress_poly_err d p) = decompress_poly d (compress_poly d p).
proof. 
rewrite /compress_poly_err /decompress_poly /(&+); apply Array256.ext_eq => /> x xl xh.
rewrite map2iE //= mapiE //= !mapiE // /compress_err. by ring.
qed.

(* The distribution of ring elements of small norm as an operator *)

abbrev dR (d: Fq distr): poly distr = darray256 d.

lemma dR_ll d:
 is_lossless d => is_lossless (dR d)
by exact darray256_ll.

lemma supp_dR d p:
 p \in dR d <=> all (support d) (Array256.to_list p)
by exact supp_darray256.

lemma dR_fu d:
 is_full d => is_full (dR d)
by exact darray256_fu.

lemma dR_uni d:
 is_uniform d => is_uniform (dR d)
by exact darray256_uni.



op dshort_R : poly distr = dR dshort_elem.

lemma dshort_R_ll : is_lossless dshort_R
by smt(dR_ll dshort_elem_ll).

(* The uniform distribution of ring elements as an operator *)

op duni_R : poly distr =  dR duni_elem.

lemma duni_R_ll : is_lossless duni_R
by smt(dR_ll duni_elem_ll).

lemma duni_R_uni : is_uniform duni_R
by smt(dR_uni duni_elem_uni).

lemma duni_R_fu : is_full duni_R
by smt(dR_fu duni_elem_fu).

(**************************************************)
(**************************************************)

(* The NTT operation over ring elements 

We give here the mathematical specification of the NTT in
a way that roughly matches what is described in the spec.

Then we will have an NTT.ec file where we prove that 1) the imperative
specs are equivalent to these operators and 2) that these operators have
the properties we require to show that Kyber is correct up to some
decryption failure bound.

*)

require (****) Bigalg.
  clone import Bigalg.BigComRing as BigDom with
    type  CR.t     <- Fq,
      op  CR.zeror <- Zq.zero,
      op  CR.oner  <- Zq.one,
      op  CR.(+)   <- Zq.(+),
      op  CR.([-]) <- Zq.([-]),
      op  CR.( * ) <- Zq.( * ),
      op  CR.invr  <- Zq.inv,
      op  CR.ofint <- ZqRing.ofint,
    pred  CR.unit  <- Zq.unit
    proof CR.*.

  realize CR.addrA     by apply ZqRing.addrA.
  realize CR.addrC     by apply ZqRing.addrC.
  realize CR.add0r     by apply ZqRing.add0r.
  realize CR.addNr     by apply ZqRing.addNr.
  realize CR.oner_neq0 by apply ZqRing.oner_neq0.
  realize CR.mulrA     by apply ZqRing.mulrA.
  realize CR.mulrC     by apply ZqRing.mulrC.
  realize CR.mul1r     by apply ZqRing.mul1r.
  realize CR.mulrDl    by apply ZqRing.mulrDl.
  realize CR.mulVr     by apply ZqRing.mulVr.
  realize CR.unitP     by apply ZqRing.unitP.
  realize CR.unitout   by apply ZqRing.unitout.

op zroot = inFq 17.

op br = BitEncoding.BitReverse.bsrev 7.

op ntt(p : poly) = Array256.init (fun i => 
   if i %% 2  = 0
   then let ii = i %/ 2 in BAdd.bigi predT (fun j => p.[2*j]   * ZqRing.exp zroot ((2 * br ii + 1) * j)) 0 128
   else let ii = i %/ 2 in BAdd.bigi predT (fun j => p.[2*j+1] * ZqRing.exp zroot ((2 * br ii + 1) * j)) 0 128) axiomatized by nttE.


op invntt(p : poly) = Array256.init (fun i => 
   if i %% 2  = 0 
   then let ii = i %/ 2 in BAdd.bigi predT (fun j => inv (inFq 128) * p.[2*j]   * ZqRing.exp zroot (-((2 * br j + 1) * ii))) 0 128
   else let ii = i %/ 2 in BAdd.bigi predT (fun j => inv (inFq 128) * p.[2*j+1] * ZqRing.exp zroot (-((2 * br j + 1) * ii))) 0 128) axiomatized by invnttE.

(* This is multiplication of two degree-1 polynomials in Fq
    modulo X^2 - zroot.
  
    (a1 + a2 X) * (b1 + b2 X) mod (X^2 - zroot) = 

    (a2b2zroot + a1b1) + (a1b2 + a2b1)X 


    And its extension to two products, one over   
    (X^2 - zroot) and another one over (X^2 + zroot)
 *)
op cmplx_mul (a :Fq * Fq, b : Fq * Fq, zzeta : Fq) : Fq * Fq =
     (a.`2 * b.`2 * zzeta + a.`1*b.`1, a.`1 * b.`2 + a.`2 * b.`1).

(* The base multiplication in the NTT domain is defined in the
   spec as follows. *)

op basemul(a b : poly) :  poly = Array256.init (fun i =>
   if i %% 2  = 0 
   then let ii = i %/ 2     in 
       (cmplx_mul (a.[2*ii],a.[2*ii+1]) (b.[2*ii],b.[2*ii+1]) (ZqRing.exp zroot ((2 * br ii + 1)))).`1
   else let ii = i %/ 2 in 
       (cmplx_mul (a.[2*ii],a.[2*ii+1]) (b.[2*ii],b.[2*ii+1]) (ZqRing.exp zroot ((2 * br ii + 1)))).`2).




(* END: NTT *)


(* We can now set-up the EC algebraic libraries *)

(* Note that I have no way to pass the ring operations
   to this theory because it takes the representation
   to be that of the base ring of polynomials, which 
   I never work with. *)

require import PolyReduce.
clone import PolyReduce as PolyR with
   op n <- 256,
   type BasePoly.coeff <- Fq,
   op BasePoly.Coeff.(+) <- Zq.(+),
   op BasePoly.Coeff.( *) <- Zq.( *),
   op BasePoly.Coeff.zeror <- Zq.zero,
   op BasePoly.Coeff.oner <- Zq.one,
   op BasePoly.Coeff.([-]) <- Zq.([-]),
   op BasePoly.Coeff.invr <- Zq.inv,
   pred BasePoly.Coeff.unit <- Zq.unit
   rename "polyXnD1" as "AlgR"
   rename "poly" as "basepoly"
   proof BasePoly.Coeff.addrA by apply ZqRing.addrA
   proof BasePoly.Coeff.addrC by apply ZqRing.addrC
   proof BasePoly.Coeff.add0r by apply ZqRing.add0r 
   proof BasePoly.Coeff.addNr by apply ZqRing.addNr 
   proof BasePoly.Coeff.oner_neq0 by apply ZqRing.oner_neq0
   proof BasePoly.Coeff.mulrA by apply ZqRing.mulrA
   proof BasePoly.Coeff.mulrC by apply ZqRing.mulrC 
   proof BasePoly.Coeff.mul1r by apply ZqRing.mul1r 
   proof BasePoly.Coeff.mulrDl by apply ZqRing.mulrDl 
   proof BasePoly.Coeff.mulVr by apply ZqRing.mulVr
   proof BasePoly.Coeff.unitP by apply ZqRing.unitP 
   proof BasePoly.Coeff.unitout by apply ZqRing.unitout
   proof gt0_n by auto. 

op poly2polyr(p : poly) : AlgR = pi (oget (BasePoly.to_basepoly 
                              (fun i => if 0<=i<256 then p.[i] else Zq.zero))).
op polyr2poly(p : AlgR) : poly = Array256.init (fun i => p.[i]).

lemma poly2polyrP i p :  0<=i<256 => (poly2polyr p).[i] = p.[i].
move => ib.
have H := (BasePoly.to_basepolyT (fun (i0 : int) => if 0 <= i0 && i0 < 256 then p.[i0] else Zq.zero) _); 1: by smt(BasePoly.IsPoly).
rewrite /poly2polyr /"_.[_]".
rewrite piK. 
+ rewrite reducedP /=; 1: by smt(BasePoly.deg_leP).
by smt().
qed.

lemma polyr2polyP i p :  0<=i<256 => (polyr2poly p).[i] = p.[i].
move => ib;rewrite /polyr2poly /"_.[_]" initiE //=.
qed.


lemma polyr2polyK : cancel poly2polyr polyr2poly.
rewrite /cancel => x; apply Array256.tP => i ib.
by rewrite polyr2polyP // poly2polyrP //=.
qed.

lemma poly2polyrK : cancel polyr2poly poly2polyr.
rewrite /cancel => x;  apply AlgR_eqP => i ib.
by rewrite poly2polyrP // polyr2polyP //=.
qed.

lemma add_lift a b : a &+ b = polyr2poly (poly2polyr a + poly2polyr b). 
apply Array256.tP => i ib.
rewrite polyr2polyP // rcoeffD !poly2polyrP //.
by rewrite /(&+) /= map2E /= initiE //=.
qed.

lemma sub_lift a : (&-) a = polyr2poly (- poly2polyr a). 
apply Array256.tP => i ib.
rewrite polyr2polyP // -rcoeffN !poly2polyrP //.
by rewrite /(&-) /= mapE /= initiE //=.
qed.

lemma mul_lift a b : a &* b = polyr2poly (poly2polyr a * poly2polyr b). 
apply Array256.tP => i ib.
rewrite polyr2polyP // rcoeffM //. 
rewrite /(&*) /= /BasePoly.BigCf.BCA.big filter_predT /range /= initiE  //= foldr_map /=.
have : forall x, x \in (iota_ 0 256) => 0 <= x < 256 by smt(mem_iota).
elim (iota_ 0 256).
+ by auto.
move => x l H H1 /=.
case (0 <= i - x).
 + move => * /=.
   rewrite (H _) /=; 1: by smt(). 
   ring.
   have -> : (poly2polyr b).[256 + i - x] = Zq.zero by smt(lt0_rcoeff gered_rcoeff).
   rewrite poly2polyrP; 1: by smt(mem_head). 
   rewrite poly2polyrP; 1: by smt().
   by ring.
move => * /=.
rewrite (H _) /=; 1: by smt(). 
ring.
rewrite poly2polyrP; 1: smt().
rewrite poly2polyrP; 1: by smt(mem_head). 
   have -> : (poly2polyr b).[i - x] = Zq.zero by smt(lt0_rcoeff gered_rcoeff).
   have -> : 256 + (i - x) = 256 + i - x by smt().
   by ring.
qed.

lemma zero_lift : KPoly.zero = polyr2poly zeroXnD1. 
apply Array256.tP => i ib.
by rewrite polyr2polyP // /KPoly.zero /create initiE //= rcoeff0.
qed.

lemma one_lift : KPoly.one = polyr2poly oneXnD1. 
apply Array256.tP => i ib.
rewrite polyr2polyP // /KPoly.one /KPoly.zero /create.
case (i = 0).
move => *;rewrite set_eqiE //; smt(@PolyR).
move => *; rewrite set_neqiE // initiE //=; smt(@PolyR).
qed.

op invr(p : poly) = polyr2poly (invr (poly2polyr p)).

lemma polyr2poly_inj : injective polyr2poly.
by apply (can_inj _ poly2polyr); apply poly2polyrK.
qed.

lemma poly2polyr_inj : injective poly2polyr.
by apply (can_inj _ polyr2poly); apply polyr2polyK.
qed.


end KPoly.

export KPoly.
import PolyR.

op kvec : int = 3. 

require Matrix.
clone import Matrix as KMatrix with
    op size <- kvec,
    type ZR.t = poly,
    op ZR.zeror <- KPoly.zero,
    op ZR.oner <- KPoly.one,
    pred ZR.unit = fun x => unit (poly2polyr x),
    op ZR.(+) <- KPoly.(&+),
    op ZR.([-]) <- KPoly.(&-),
    op ZR.( * ) <- KPoly.(&*),
    op ZR.invr <- KPoly.invr
    proof ZR.addrA by smt(add_lift  poly2polyrK ComRing.addrA)
    proof ZR.addrC by smt(add_lift  poly2polyrK ComRing.addrC)
    proof ZR.add0r by smt(zero_lift add_lift poly2polyrK ComRing.add0r polyr2polyK)
    proof ZR.addNr by smt(zero_lift sub_lift add_lift poly2polyrK ComRing.addNr polyr2polyK)
    proof ZR.oner_neq0 by smt(zero_lift  poly2polyrK one_lift ComRing.oner_neq0)
    proof ZR.mulrA by smt(mul_lift  poly2polyrK ComRing.mulrA)
    proof ZR.mulrC by smt(mul_lift  poly2polyrK ComRing.mulrC)
    proof ZR.mul1r by smt(one_lift mul_lift poly2polyrK ComRing.mul1r polyr2polyK)
    proof ZR.mulrDl by smt(add_lift mul_lift poly2polyrK ComRing.mulrDl polyr2polyK)
    proof ZR.mulVr by smt(one_lift mul_lift poly2polyrK ComRing.mulVr PolyR.ComRing.unitr1 poly2polyrK)
    proof ZR.unitP by smt(one_lift mul_lift polyr2poly_inj ComRing.unitP)
    proof ZR.unitout by smt(unitout polyr2polyK)
    proof ge0_size by auto.

instance ring with R
  op rzero = KPoly.zero
  op rone  = KPoly.one
  op add   = KPoly.(&+)
  op opp   = KPoly.(&-)
  op mul   = KPoly.(&*)
  op expr  = ZR.exp
  op ofint = ZR.ofint

  proof oner_neq0 by apply ZR.oner_neq0
  proof addrA     by apply ZR.addrA
  proof addrC     by apply ZR.addrC
  proof addr0     by apply ZR.addr0
  proof addrN     by apply ZR.addrN
  proof mulr1     by apply ZR.mulr1
  proof mulrA     by apply ZR.mulrA
  proof mulrC     by apply ZR.mulrC
  proof mulrDl    by apply ZR.mulrDl
  proof expr0     by apply ZR.expr0
  proof ofint0    by apply ZR.ofint0
  proof ofint1    by apply ZR.ofint1
  proof exprS     by apply ZR.exprS
  proof ofintS    by apply ZR.ofintS
  proof ofintN    by apply ZR.ofintN.

import Vector.

(* This should be added to matrix *)
 op "_.[_<-_]" (m : matrix) (ij : int * int) (c : poly) : matrix = 
     offunm (fun i j => if (i,j) = ij then c else (tofunm m) i j).
 
op set (v : vector) (i : int) (c : poly) : vector = 
     offunv (fun i' => if i = i' then c else (tofunv v) i').

op mapm(f : poly -> poly, m : matrix) = offunm (fun i j => f (tofunm m i j)).
op mapv(f : poly -> poly, v : vector) = offunv (fun i => f (tofunv v i)).
(***********)

op nttv v = mapv ntt v.
op nttm m = mapm ntt m.
op invnttv v = mapv invntt v.
op invnttm m = mapm invntt m.

op ntt_mmul(m : matrix, v : vector) : vector = 
   offunv (fun (i : int) => (Big.BAdd.bigi predT (fun (j : int) => basemul m.[i, j] v.[j]) 0 kvec)).

op ntt_dotp(v1 v2 : vector) : poly = 
   Big.BAdd.bigi predT (fun (i : int) => basemul v1.[i] v2.[i]) 0 kvec.

(****************************************************************************)
(****************************************************************************)
(*  Encoding polys and vectors to and from byte arrays                      *)
(****************************************************************************)
(****************************************************************************)

type ipoly = int Array256.t.
op toipoly(p : poly) : ipoly = map asint p.
op ofipoly(p : ipoly)  : poly = map inFq p.

type ipolyvec = int Array768.t.

op [a] subarray256(x : 'a Array768.t, i : int) =
   Array256.init (fun k => x.[256*i + k]).

op [a] fromarray256(a0 a1 a2 : 'a Array256.t) : 'a Array768.t = 
   Array768.init (fun k => if 0 <= k < 256
                  then a0.[k]
                  else if 256 <= k < 512
                       then a1.[k-256] 
                       else a2.[k-512]).   

op [a] subarray384(x : 'a Array1152.t, i : int) =
   Array384.init (fun k => x.[384*i + k]).

op [a] fromarray384(a0 a1 a2 : 'a Array384.t) : 'a Array1152.t = 
   Array1152.init (fun k => if 0 <= k < 384
                  then a0.[k]
                  else if 384 <= k < 768
                       then a1.[k-384] 
                       else a2.[k-768]).   

op toipolyvec(p : vector) : ipolyvec = map asint (fromarray256 p.[0] p.[1] p.[2]).

op ofipolyvec(p : ipolyvec) =  offunv (fun k => map inFq (subarray256 p k)).

op compress_polyvec(d : int, p : vector) : ipolyvec =  
        map (compress d) (fromarray256 p.[0] p.[1] p.[2]).

op decompress_polyvec(d : int, p : ipolyvec) =  
        offunv (fun k => map (decompress d) (subarray256 p k)).



require import BitEncoding.
import BitChunking.

op BytesToBits(bytes : W8.t list) : bool list = flatten (map W8.w2bits bytes).
op decode(l : int, bits : bool list) = map bs2int (chunk l (take (256*l) bits)).
op decode_vec(l : int, bits : bool list) = map bs2int (chunk l (take (768*l) bits)).


(* Decode Operators as Defined in the Kyber Spec *)
op sem_decode12(a : W8.t Array384.t) : ipoly =
   Array256.of_list 0 (decode 12 (BytesToBits (to_list a))).
op sem_decode4(a : W8.t Array128.t) : ipoly = 
   Array256.of_list 0 (decode 4 (BytesToBits (to_list a))).
op sem_decode1(a : W8.t Array32.t) : ipoly = 
   Array256.of_list 0 (decode 1 (BytesToBits (to_list a))).
op sem_decode10_vec(a : W8.t Array960.t) : ipolyvec = 
   Array768.of_list 0 (decode_vec 10 (BytesToBits (to_list a))).
op sem_decode12_vec(a : W8.t Array1152.t) : ipolyvec = 
   Array768.of_list 0 (decode_vec 12 (BytesToBits (to_list a))).

(* To avoid loop matching pain with the implementation
   we adopt the same control structure and specify EncDec
   in a more palattable way. *)
module EncDec = {

   proc decode12(a : W8.t Array384.t) : ipoly = {
       var i;
       var r : ipoly;
       r <- witness;
       i <- 0;
       while (i < 128) {
          r.[i*2+0]  <- to_uint a.[3*i] + to_uint a.[3*i+1] %% 2^4 * 2^8;
          r.[i*2+1]  <- to_uint a.[3*i+2] * 2^4 + to_uint a.[3*i+1] %/ 2^4;
          i <- i + 1;
       }
       return r;
   }

   proc decode4(a : W8.t Array128.t) : ipoly = {
       var i;
       var r : ipoly;
       r <- witness;
       i <- 0;
       while (i < 128) {
          r.[i*2+0]  <- to_uint a.[i] %% 16;
          r.[i*2+1]  <- to_uint a.[i] %/ 16;
          i <- i + 1;
       }
       return r;
   }

   proc decode1(a : W8.t Array32.t) : ipoly = {
       var i;
       var r : ipoly;
       r <- witness;
       i <- 0;
       while (i < 32) {
          r.[i*8+0] <- b2i a.[i].[0];
          r.[i*8+1] <- b2i a.[i].[1];
          r.[i*8+2] <- b2i a.[i].[2];
          r.[i*8+3] <- b2i a.[i].[3];
          r.[i*8+4] <- b2i a.[i].[4];
          r.[i*8+5] <- b2i a.[i].[5];
          r.[i*8+6] <- b2i a.[i].[6];
          r.[i*8+7] <- b2i a.[i].[7];
          i<-i+1;
       }
       return r;
   }

   proc encode12(a : ipoly) : W8.t Array384.t = {
       var fi1,fi2,i,j;
       var r : W8.t Array384.t;
       r <- witness;
       j <- 0; i <- 0; 
       while (i < 256) {
          fi1 <- a.[i];
          fi2 <- a.[i+1];
          r.[j] <- W8.of_int fi1;                               j <- j + 1;
          r.[j] <- W8.of_int ((fi2 %% 2^4) * 2^4 + fi1 %/ 2^8); j <- j + 1;
          r.[j] <- W8.of_int (fi2 %/ 2^4);                      j <- j + 1;
          i <- i + 2;
       }
       return r;
   }

   proc encode4(p : ipoly) : W8.t Array128.t = {
       var fi,fi1,i,j;
       var r : W8.t Array128.t;
       r <- witness;
       j <- 0; i <- 0; 
       while (i < 128) {
          fi <- p.[j]; j <- j + 1;
          fi1 <- p.[j]; j <- j + 1; 
          r.[i] <- W8.of_int (fi + fi1 * 2^4); i <- i + 1;
       }
       return r;
   }

   proc encode1(a : ipoly) : W8.t Array32.t = {
       var i,j,r;
       var ra : W8.t Array32.t;
       ra <- witness;
       i <- 0;
       while (i < 32) {
          r <- W8.zero;
          j <- 0;
          while (j < 8) {
             r <- W8.of_int (to_uint r + a.[8*i+j] * 2^j);
             j <- j + 1;
          }
          ra.[i] <- r;
          i <- i + 1;
       }
       return ra;      
   }

(* Extension to vectors *)

   proc encode10_vec(u : ipolyvec) : W8.t Array960.t = {
      var c : W8.t Array960.t;
      var i,j,t0,t1,t2,t3;
      c <- witness;
      j <- 0; i <- 0; 
      while (i < 768) {
         t0 <- u.[i];
         t1 <- u.[i + 1];
         t2 <- u.[i + 2];
         t3 <- u.[i + 3];
         c.[j] <- W8.of_int t0; j <- j + 1;
         c.[j] <-  W8.of_int (t0 %/ 2^8 + t1 * 2^2); j <- j + 1;
         c.[j] <-  W8.of_int (t1 %/ 2^6 + t2 * 2^4); j <- j + 1;
         c.[j] <-  W8.of_int (t2 %/ 2^4 + t3 * 2^6); j <- j + 1;
         c.[j] <-  W8.of_int (t3 %/ 2^2); j <- j + 1;
         i <- i + 4;
      }
      return c;
   }

   proc encode12_vec(a : ipolyvec) : W8.t Array1152.t = {
      var a1, a2, a3;
      a1 <@ encode12(subarray256 a 0);
      a2 <@ encode12(subarray256 a 1);
      a3 <@ encode12(subarray256 a 2);
      return fromarray384 a1 a2 a3;
   }

   proc decode10_vec(u : W8.t Array960.t) : ipolyvec = {
      var c : ipolyvec;
      var i,j,t0,t1,t2,t3,t4;
      c <- witness;
      j <- 0; i <- 0; 
      while (i < 768) {
         t0 <- u.[j]; t1 <- u.[j + 1]; t2 <- u.[j + 2]; t3 <- u.[j + 3]; t4 <- u.[j + 4];
         c.[i] <- to_uint t0 + (to_uint t1 %% 2^2) * 2^8;
         c.[i + 1] <-  to_uint t1 %/ 2^2 + (to_uint t2 %% 2^4) * 2^6;
         c.[i + 2] <-  to_uint t2 %/ 2^4 + (to_uint t3 %% 2^6) * 2^4;
         c.[i + 3] <-  to_uint t3 %/ 2^6 + (to_uint t4) * 2^2;
         j <- j + 5;
         i <- i + 4;
      }
      return c;
   }


   proc decode12_vec(a : W8.t Array1152.t) : ipolyvec = {
      var a1, a2, a3;
      a1 <@ decode12(subarray384 a 0);
      a2 <@ decode12(subarray384 a 1);
      a3 <@ decode12(subarray384 a 2);
      return fromarray256 a1 a2 a3;
   }

}.

(* EncDec procedures are proved correct in file EncDecCorrectness *)

(****************************)
(****************************)
(* SCHEME SPECIFICATION     *)
(****************************)
(****************************)

theory KyberSpec.

(* For the CPA component will model the three usages of SHA3 family 
   components as different cryptographic primitives. 

This will be an entropy smoothing hash function/prg.

G = fn _sha3512_32(reg ptr u8[64] out, reg const ptr u8[32] in) -> stack u8[64]

This will be a XOF construction based on a random oracle that
takes the input to absorb plus an integer to identify the
output block.

XOF =
fn _shake128_absorb34(reg ptr u64[25] state, reg const ptr u8[34] in) -> reg ptr u64[25]
fn _shake128_squeezeblock(reg ptr u64[25] state, reg ptr u8[SHAKE128_RATE] out) -> 
    reg ptr u64[25], reg ptr u8[SHAKE128_RATE] => RATE is 168

This will be a PRF.

PRF = fn _shake256_128_33(reg ptr u8[128] out, reg const ptr u8[33] in) -> stack u8[128]

We do not clone the ROM in fully specified form because
we want to analyse the Spec in different ROM settings.

Note that the following operators are used only for one purpose in the
external algorithms, and they are all implicitly domain-separated
due to either the use of different algorithms or different input lengths.
************************************************)

op SHA3_256_32_32 : W8.t Array32.t -> unit -> W8.t Array32.t.
op SHA3_256_64_64   : W8.t Array64.t -> W8.t Array64.t.
op SHA3_256_1088_32 : W8.t Array1088.t -> W8.t Array32.t.
op SHA3_256_1184_32 : W8.t Array1184.t -> W8.t Array32.t.

op SHA3_512_32_64 : W8.t Array32.t -> unit -> W8.t Array64.t.

op SHAKE128_ABSORB_34 : W8.t Array34.t ->  W64.t Array25.t.
op SHAKE128_SQUEEZE_168 : W64.t Array25.t -> W64.t Array25.t *  W8.t Array168.t.

op SHAKE256_64_32 : W8.t Array64.t -> W8.t Array32.t.
op SHAKE256_33_128 : W8.t Array32.t -> W8.t ->  W8.t Array128.t.

clone import PKE_Ext as KyberPKE with
  type pkey = W8.t Array1152.t * W8.t Array32.t,
  type skey = W8.t Array1152.t,
  type plaintext = W8.t Array32.t,
  type ciphertext = W8.t Array960.t * W8.t Array128.t.

(* PRF keys in encryption come directly from srand *)
abbrev srand = darray32 W8.dword.

lemma srand_ll: is_lossless srand by smt(darray32_ll W8.dword_ll).

(* G needs only to be entropy smoothing, which is
   exactly a PRF without any input *)

clone PRF as HS_DEFS with
  type D <- unit,
  type R <- W8.t Array64.t.

clone import HS_DEFS.PseudoRF as HSF with
  type K <- W8.t Array32.t, 
  op dK <- srand,
  op F <- SHA3_512_32_64.

module KHS = HSF.PseudoRF.

module G(HS: HSF.PseudoRF) = {
  proc sample(s : W8.t Array32.t) : W8.t Array32.t * W8.t Array32.t = {
     var rhosig,rho,sig;
     rhosig <@ HS.f(s,());
     rho <- Array32.init (fun i => rhosig.[i]);
     sig <- Array32.init (fun i => rhosig.[i + 32]);
     return (rho,sig);
  }
}.

(* We take some liberty to specify parse using a XOF that
   returns 168 bytes at a time, which is what the Kyber
   implementation does. *)
module type XOF_t(O : RO.POracle) = {
   proc init(rho :  W8.t Array32.t, i j : W8.t) : unit
   proc next_bytes() : W8.t Array168.t
}.

(* This is a concrete XOF that does not use the random oracle,
   and that matches the Kyber spec and the implementation *)

module (XOF : XOF_t) (O : KyberPKE.RO.POracle) = {
  var state : W64.t Array25.t
  proc init(rho : W8.t Array32.t, i j : W8.t) : unit = {
       var extseed : W8.t Array34.t;
       extseed <- Array34.init
        (fun k => if k < 32 then rho.[k] else if k=32 then i else j);
       state <- SHAKE128_ABSORB_34 extseed;
  }
  proc next_bytes() : W8.t Array168.t = { 
       var buf;
       (state,buf) <- SHAKE128_SQUEEZE_168 state;
       return buf; 
  }
}.


module Parse(XOF : XOF_t, O : RO.POracle) = {
   proc sample() : poly = {
      var j, b168, bi, bi1, bi2, d1, d2,k;
      var aa : poly;
      aa <- witness;
      j <- 0;
      while (j < 256) {
         b168 <@ XOF(O).next_bytes();
         k <- 0;
         while ((j < 256) && (k < 168)) {
            bi  <- b168.[k];
            bi1 <- b168.[k+1];
            bi2 <- b168.[k+2];
            k <- k + 3;
            d1 <- to_uint bi        + 256 * (to_uint bi1 %% 16);
            d2 <- to_uint bi1 %/ 16 + 16  * to_uint bi2;
            if (d1 < q)                { aa.[j] <- inFq d1; j <- j + 1; }
            if ((d2 < q) && (j < 256)) { aa.[j] <- inFq d2; j <- j + 1; }
         }
      }
      return aa;
   }
}.


clone PRF as PRF_DEFS with
  type D <- W8.t,
  type R <- W8.t Array128.t.


clone import PRF_DEFS.PseudoRF as PRF_ with
  type K <- W8.t Array32.t, 
  op dK <- srand,
  op F <- SHAKE256_33_128.

module KPRF = PRF_.PseudoRF.

module CBD2(PRF : PseudoRF) = {
   proc sample_spec(sig : W8.t Array32.t, _N : int) : poly = {
      var i,a,b,bytes,bits;
      var rr : poly;
      rr <- witness;
      bytes <@ PRF.f(sig, W8.of_int _N);
      bits <- BytesToBits (to_list bytes);
      i <- 0;
      while (i < 256) { 
        a <- b2i (nth false bits (4*i)) + b2i (nth false bits (4*i+1));
        b <- b2i (nth false bits (4*i+2)) + b2i (nth false bits (4*i+3));
        rr.[i] <- inFq  (a - b);
        i <- i + 1;
      }
      return rr;

   }
   proc sample(sig : W8.t Array32.t, _N : int) : poly = {
      var i,j,a,b,bytes;
      var rr : poly;
      rr <- witness;
      bytes <@ PRF.f(sig, W8.of_int _N);
      i <- 0; j <- 0;
      while (i < 128) { (* unroll loop body once to match code *)
        a <- b2i bytes.[i].[j %% 2 * 4 + 0] + b2i bytes.[i].[j %% 2 * 4 + 1];
        b <- b2i bytes.[i].[j %% 2 * 4 + 2] + b2i bytes.[i].[j %% 2 * 4 + 3];
        rr.[j] <- inFq  (a - b);
        j <- j + 1;
        a <- b2i bytes.[i].[j %% 2 * 4 + 0] + b2i bytes.[i].[j %% 2 * 4 + 1];
        b <- b2i bytes.[i].[j %% 2 * 4 + 2] + b2i bytes.[i].[j %% 2 * 4 + 3];
        rr.[j] <- inFq  (a - b);
        j <- j + 1;
        i <- i + 1;
      }
      return rr;
   }
}.

equiv cbdspec_correct (PRF <: PseudoRF): 
  CBD2(PRF).sample_spec ~ CBD2(PRF).sample :
  ={glob PRF,sig,_N} ==> ={res}.
proc => /=. 
seq 2 2 : (#pre /\ ={rr,bytes}); 1: by sim.
swap {2}1 1.
unroll for {1} ^while;
unroll for {2} ^while;
sim; auto =>/> &2;
have H : forall i, 0<=i<1024 => (nth false (BytesToBits (to_list bytes{2})) i) = 
                   bytes{2}.[i%/8].[i%%8]; last by rewrite !H //=.
move => i Hi. 
rewrite /BytesToBits (nth_flatten false 8 (map W8.w2bits (to_list bytes{2})) _).
+ rewrite allP => k /=.
  rewrite mapP=> [[x [Hx1 ->]]].
  by rewrite W8.size_w2bits.  
rewrite -get_to_list (nth_map  witness%W8); 1: smt(Array128.size_to_list).
rewrite w2bitsE /= nth_mkseq /#.
qed.



module Kyber(HS : HSF.PseudoRF, XOF : XOF_t, PRF : PseudoRF, O : RO.POracle) : Scheme = {

  (* Spec gives a derandomized enc that matches this code *)
  proc kg_derand(seed: W8.t Array32.t) : pkey * skey = {
     var rho, sig, i, j, _N,c,t;
     var tv,sv : W8.t Array1152.t;
     var a : matrix;
     var s,e : vector;
     a <- witness;
     e <- witness;
     s <- witness;
     sv <- witness;
     tv <- witness;
     (rho,sig) <@ G(HS).sample(seed);
     _N <- 0; 
     i <- 0;
     while (i < kvec) {
        j <- 0;
        while (j < kvec) {
           XOF(O).init(rho,W8.of_int j,W8.of_int i);
           c <@ Parse(XOF,O).sample();
           a.[(i,j)] <- c;
           j <- j + 1;
        }
        i <- i + 1;
     }      
     i <- 0;
     while (i < kvec) {
        c <@ CBD2(PRF).sample(sig,_N);
        s <- set s i c;
        _N <- _N + 1;
        i <- i + 1;
     }         
     i <- 0;
     while (i < kvec) {
        c <@ CBD2(PRF).sample(sig,_N);
        e <- set e i c;
        _N <- _N + 1;
        i <- i + 1;
     }      
     s <- nttv s;
     e <- nttv e; 
     t <- ntt_mmul a s + e;
     tv <@ EncDec.encode12_vec(toipolyvec t); (* minimum residues *)
     sv <@ EncDec.encode12_vec(toipolyvec s); (* minimum residues *)
     return ((tv,rho),sv);
  }

  proc kg() : pkey * skey = {
     var s,kp;
     s <$ srand;
     kp <@ kg_derand(s);
     return kp;
  }

  (* Spec gives a derandomized enc that matches this code *)
  proc enc_derand(pk : pkey, m : plaintext, r : W8.t Array32.t) : ciphertext = {
      var _N,i,j,c,tv,rho,rv,e1,e2,rhat,u,v,mp,c2,thati;
      var that : vector;
      var aT : matrix;
      var c1 : W8.t Array960.t;
      aT <- witness;
      c1 <- witness;
      e1 <- witness;
      rv <- witness;
      that <- witness;
      (tv,rho) <- pk;
      _N <- 0;
      thati <@ EncDec.decode12_vec(tv); 
      that <- ofipolyvec thati;
      i <- 0;
      while (i < kvec) {
        j <- 0;
        while (j < kvec) {
           XOF(O).init(rho,W8.of_int i, W8.of_int j);
           c <@ Parse(XOF,O).sample();
           aT.[(i,j)] <- c; (* this is the transposed matrix *)
           j <- j + 1;
        }
        i <- i + 1;
      } 
      i <- 0;
      while (i < kvec) {
        c <@ CBD2(PRF).sample(r,_N);
        rv <- set rv i c;
        _N <- _N + 1;
        i <- i + 1;
      }         
      i <- 0;
      while (i < kvec) {
        c <@ CBD2(PRF).sample(r,_N);
        e1 <- set e1 i c;
        _N <- _N + 1;
        i <- i + 1;
      }      
      e2 <@ CBD2(PRF).sample(r,_N);
      rhat <- nttv rv;
      u <- invnttv (ntt_mmul aT rhat) + e1;
      mp <@ EncDec.decode1(m);
      v <- invntt (ntt_dotp that rhat) &+ e2 &+ decompress_poly 1 mp; 
      c1 <@ EncDec.encode10_vec(compress_polyvec 10 u); 
      c2 <@ EncDec.encode4(compress_poly 4 v);
      return (c1,c2);
  }

  proc enc(pk : pkey, m : plaintext) : ciphertext = {
     var r,c;
     r <$ srand;
     c <@ enc_derand(pk,m,r);
     return c;
  }

  proc dec(sk : skey, cph : ciphertext) : plaintext option = {
      var m,mp,ui,v,vi,si, c1, c2;
      var u,s : vector;
      u <- witness;
      s <- witness;
      (c1,c2) <- cph;
      ui <@ EncDec.decode10_vec(c1);
      u <- decompress_polyvec 10 ui;
      vi <@ EncDec.decode4(c2);
      v <- decompress_poly 4 vi;
      si <@ EncDec.decode12_vec(sk);
      s <- ofipolyvec si;
      mp <- v &+ ((&-) (invntt (ntt_dotp s (nttv u))));
      m <@ EncDec.encode1(compress_poly 1 mp);
      return Some m;
  }

}.

(*********************************)
(*********************************)
(*********************************)
(* IND CCA Component             *)
(*********************************)
(*********************************)

clone PRF as HS_KEM_DEFS with
  type D <- unit,
  type R <- W8.t Array32.t.


clone import HS_KEM_DEFS.PseudoRF as HSF_KEM with
  type K <- W8.t Array32.t, 
  op dK <- srand,
  op F <- SHA3_256_32_32.

module KHS_KEM = HSF_KEM.PseudoRF.

module KemG(KemHS: HSF_KEM.PseudoRF) = {
  proc sample(s : W8.t Array32.t) : W8.t Array32.t = {
     var m;
     m <@ KemHS.f(s,());
     return m;
  }
}.

module type KEMHashes(O : RO.POracle) = {
  proc pkH(pk : W8.t Array1152.t * W8.t Array32.t) : W8.t Array32.t
  proc cH(c : W8.t Array960.t * W8.t Array128.t) : W8.t Array32.t
  proc g(m : W8.t Array32.t, pkh : W8.t Array32.t) : W8.t Array32.t * W8.t Array32.t 
  proc kdf(kt : W8.t Array32.t, ch : W8.t Array32.t) : W8.t Array32.t
}.

module (KemH : KEMHashes) (RO : RO.POracle) = {
  proc pkH(pk : W8.t Array1152.t * W8.t Array32.t) : W8.t Array32.t = {
         return SHA3_256_1184_32 (Array1184.init (fun k => if (k < 1152) then pk.`1.[k] else pk.`2.[k-1152]));
  }
  proc cH(c : W8.t Array960.t * W8.t Array128.t) : W8.t Array32.t = {
         return SHA3_256_1088_32 (Array1088.init (fun k => if (k < 960) then c.`1.[k] else c.`2.[k-960]));

  }
  proc g(m : W8.t Array32.t, pkh : W8.t Array32.t) : W8.t Array32.t * W8.t Array32.t  = {
      var ktr;
      ktr <- SHA3_256_64_64 (Array64.init (fun k => if (k < 32) then m.[k] else pkh.[k-32]));
      return (Array32.init (fun i=> ktr.[i]), Array32.init (fun i => ktr.[i + 32]));
  }
  proc kdf(kt : W8.t Array32.t, ch : W8.t Array32.t) : W8.t Array32.t = {
         return SHAKE256_64_32 (Array64.init (fun k => if (k < 32) then kt.[k] else ch.[k-32]));
  }

}.


import PRF_.
module KyberKEM(HS : HSF.PseudoRF, XOF : XOF_t, PRF : PseudoRF, 
             KemHS : HSF_KEM.PseudoRF, KemH : KEMHashes, O : RO.POracle)  = {

   proc kg_derand(seed : W8.t Array32.t * W8.t Array32.t) : 
           pkey * (skey * pkey * W8.t Array32.t * W8.t Array32.t) = {
       var kgs,z,pk,sk,hpk;
       kgs <- seed.`1;
       z <- seed.`2;
       (pk,sk) <@ Kyber(HS,XOF,PRF,O).kg_derand(kgs);
       hpk <@ KemH(O).pkH(pk);
       return (pk, (sk,pk,hpk,z));
       
   }

   proc enc_derand(pk : pkey, prem : W8.t Array32.t) : ciphertext * W8.t Array32.t = {
       var m,hpk,_Kt,r,c,hc,_K;
       m <@ KemG(KemHS).sample(prem); 
       hpk <@ KemH(O).pkH(pk); 
       (_Kt,r) <@ KemH(O).g(m,hpk);
       c <@ Kyber(HS,XOF,PRF,O).enc_derand(pk,m,r);
       hc <@ KemH(O).cH(c);
       _K <@ KemH(O).kdf(_Kt,hc);
       return (c,_K);
   }

   proc dec(cph : ciphertext, sk : skey * pkey * W8.t Array32.t * W8.t Array32.t) : W8.t Array32.t = {
       var m,_Kt,r,skp,pk,hpk,z,c,hc,_K;
       (skp,pk,hpk,z) <- sk;
       m <@ Kyber(HS,XOF,PRF,O).dec(skp,cph);
       (_Kt,r) <@ KemH(O).g(oget m,hpk);
       c <@ Kyber(HS,XOF,PRF,O).enc_derand(pk,oget m,r);
       hc <@ KemH(O).cH(cph);
       if (c = cph) {
          _K <@ KemH(O).kdf(_Kt,hc);
       }
       else {
         _K <@ KemH(O).kdf(z,hc);
       }
       return _K;
   }
}.


(************************************)
(************************************)
(* ENCODE/DECODE PROCEDURES         *)
(************************************)
(************************************)




(************************************)
(************************************)
(* SAMPLING PROCEDURES CORRECTNESS  *)
(************************************)
(************************************)

clone DMapSampling as MSlw168 with
 type t1 <- int list,
 type t2 <- W8.t Array168.t.

clone DMapSampling as MSlpoly with
 type t1 <- int list,
 type t2 <- poly.

clone DMapSampling as MSll with
 type t1 <- int list,
 type t2 <- int list.


module ParseRnd = {
   proc sample_real() : poly = {
      var a, j, bi, bi1, bi2, d1, d2,k;
      var aa : poly;
      aa <- witness;
      j <- 0;
      while (j < 256) {
         a <@ MSlw168.S.sample(dlist (dbits 8) 168, Array168.of_list witness \o List.map W8.of_int);
         k <- 0;
         while ((j < 256) && (k < 168)) {
            bi  <- a.[k];
            bi1 <- a.[k+1];
            bi2 <- a.[k+2];
            k <- k + 3;
            d1 <- to_uint bi        + 256 * (to_uint bi1 %% 16);
            d2 <- to_uint bi1 %/ 16 + 16  * to_uint bi2;
            if (d1 < q)                { aa.[j] <- inFq d1; j <- j + 1; }
            if ((d2 < q) && (j < 256)) { aa.[j] <- inFq d2; j <- j + 1; }
         }
      }
      return aa;
   }
   proc sampleL_real() : poly = {
      var l, a, j, bi, bi1, bi2, d1, d2,k;
      var aa : poly;
      aa <- witness;
      l <- [];
      j <- 0;
      while (j < 256) {
         a <@ MSlw168.S.sample(dlist (dbits 8) 168, Array168.of_list witness \o List.map W8.of_int);
         k <- 0;
         while ((j < 256) && (k < 168)) {
            bi  <- a.[k];
            bi1 <- a.[k+1];
            bi2 <- a.[k+2];
            k <- k + 3;
            d1 <- to_uint bi        + 256 * (to_uint bi1 %% 16);
            d2 <- to_uint bi1 %/ 16 + 16  * to_uint bi2;
            if (d1 < q)                { l <- rcons l (inFq d1); j <- j + 1; }
            if ((d2 < q) && (j < 256)) { l <- rcons l (inFq d2); j <- j + 1; }
         }
      }
      aa <- Array256.of_list witness l;
      return aa;
   }
   proc sample_ideal() : poly = {
     var p;
     p <$ duni_R;
     return p;
   }
}.

lemma duni_R_sample:
 duni_R
 = dmap (dlist [0..q-1] 256) (Array256.of_list witness \o List.map inFq).
proof. by rewrite /duni_R /darray256 duni_elemE dlist_dmap dmap_comp. qed.

equiv ParseRnd_sampleL_eq:
 ParseRnd.sample_real ~ ParseRnd.sampleL_real:
 true ==> ={res}.
proof.
proc.
wp; while (={j} /\ 0 <= j{1} <= 256 /\ a256l aa{1} l{2} j{1}).
 conseq (_:_ ==> ={j} /\ (0 <= j{1} && j{1} <= 256) /\ a256l aa{1} l{2} j{1}) => //.
 while (#[/:-3]pre /\ ={k,a}).
  conseq (_:_==> ={j,k,a} /\ (0 <= j{1} && j{1} <= 256) /\ a256l aa{1} l{2} j{1}) => //.
  auto => |> &1 &2 ?? Ha ??.
  split => C1.
   split => C2 *.
    split; first smt().
    apply a256l_rcons; first smt().
    apply a256l_rcons; first smt().
    done.
   split; first smt().
   apply a256l_rcons; first smt().
   done.
  move => C2.
  split; first smt().
  apply a256l_rcons; first smt().
  done.
 by inline*; auto. 
auto => |> *.
split; first smt().
move => |> p i l ???.
have ->: i=256 by smt().
by apply a256l_of_list. 
qed.

lemma dchunk_12_2_56:
 dlist (dbits 12) 112
 = dmap (dlist (dbits 24) 56) (flatten \o List.map (spreadbits 12 2)).
proof.
rewrite (_:112=2*56) 1:// dlist_mul 1..2:// -dbits_spreadbits 1..2://.
by rewrite dlist_dmap dmap_comp.
qed.

lemma dchunk_8_3_56:
 dlist (dbits 8) 168
 = dmap (dlist (dbits 24) 56) (flatten \o List.map (spreadbits 8 3)).
proof.
rewrite (_:168=3*56) 1:// dlist_mul 1..2:// -dbits_spreadbits 1..2://.
by rewrite dlist_dmap dmap_comp.
qed.

(** Parse proc. (over a random oracle) samples acording
    to the uniform distr. *)
equiv ParseRnd_equiv:
 ParseRnd.sample_real ~ ParseRnd.sample_ideal:
 true ==> ={res}.
proof.
transitivity ParseRnd.sampleL_real
 (true ==> ={res}) (true ==> ={res}) => //.
 by apply ParseRnd_sampleL_eq.
proc.
transitivity {2}
 { p <@ MSlpoly.S.sample(dlist [0..q-1] 256,
                         Array256.of_list witness \o List.map inFq); }
 ( true ==> aa{1}=p{2} ) ( true ==> ={p} ) => //; last first.
 inline*; wp; rnd; wp; auto => /> *; smt(duni_R_sample).
transitivity {2}
 { p <@ MSlpoly.S.map(dlist [0..q-1] 256,
                      Array256.of_list witness \o List.map inFq); }
 ( true ==> aa{1}=p{2} ) ( true ==> ={p} ) => //; last first.
 by symmetry; call MSlpoly.sample.
inline MSlpoly.S.map; swap{2} 2 1.
transitivity {2}
 { r1 <@ RejSampling.samplelist_upto(q-1,256); 
   p <- Array256.of_list witness (List.map inFq r1); }
 ( true ==> aa{1}=p{2} ) ( true ==> ={p} ) => //; last first.
 by inline*; auto.
transitivity {2}
 { r1 <@ RejSampling.rsamplelist_chunked(12, q-1, 256, 112); 
   p <- Array256.of_list witness (List.map inFq r1); }
 ( true ==> aa{1}=p{2} ) ( true ==> ={p} ) => //; last first.
 by wp; symmetry; call rsamplelist_chunked_upto; auto => |> * /#.
inline RejSampling.rsamplelist_chunked.
wp; while (={j} /\ 0 <= j{1} <= 256 /\ k{2}=12 /\ max{2}=q-1 /\ n{2}=256
           /\ nchunk{2}=112 /\ l{1} = List.map inFq l{2}).
 wp.
 transitivity {2}
  { xl <@ MSll.S.map(dlist (dbits 24) 56, flatten \o List.map (spreadbits 12 2));
    xn <- 0;
    while (j < 256 && xn < 56) {
      if (nth 0 xl (2*xn) <= q-1 && j < 256) {
        l <- rcons l (nth 0 xl (2*xn));
        j <- j+1;
      }
      if (nth 0 xl (2*xn+1) <= q-1 && j < 256) {
        l <- rcons l (nth 0 xl (2*xn+1));
        j <- j+1;
      }
      xn <- xn + 1;
    }
  }
  ( ={j} /\ 0 <= j{1} < 256 /\ l{1} = map inFq l{2}
    ==> ={j} /\ 0 <= j{1} <= 256 /\ l{1} = map inFq l{2} )
  ( ={j,l} /\ 0 <= j{1} < 256 /\ k{2}=12 /\ max{2}=q-1 /\ n{2}=256 /\ nchunk{2}=112
    ==> ={j,l} /\ 0 <= j{1} <= 256 /\ k{2}=12 /\ max{2}=q-1 /\ n{2}=256 /\ nchunk{2}=112 ); 1..2: smt(); first last.
  seq 1 1: (={xl} /\ #pre).
   conseq |>.
   transitivity {1} { xl <@ MSll.S.sample(dlist (dbits 24) 56, flatten \o List.map (spreadbits 12 2)); }
    ( ={j,l} ==> ={xl,j,l} )
    ( ={j, l} /\ (0 <= j{1} && j{1} < 256) /\ k{2} = 12 /\ max{2} = q - 1 /\ n{2} = 256 /\ nchunk{2} = 112
      ==> ={xl} ); first 2 smt().
    by symmetry; call MSll.sample; auto.
   inline*; auto => |> &1 &2 *.
   by split => *; rewrite dchunk_12_2_56.
  async while
   [ (fun x => xn < x), xn{1} + 1 ]
   [ (fun x => xn < 2*x), xn{1} + 1 ]
     (xn{1} < 56 /\ xn{2} < 112) (!(xn{1} < 56))
   : (={j,l,xl} /\ 0 <= j{1} <= 256 /\ k{2}=12 /\ max{2}=q-1 /\ n{2}=256 /\ nchunk{2}=112 /\ (256 <= j{1} \/ 2*xn{1} = xn{2}) /\ (0 <= xn{1})) => //=.
  + by move => /> /#.
  + by move => /> /#.
  + by move => /> /#.
  + by move=> &m; auto => /> * /#.
  + by move=> &m; auto => /> * /#.
  + move => v1 v2.
    rcondt{1} 1; first by auto => /> /#.
    rcondf{1} 4; first by auto.
    rcondt{2} 1; first by auto => /> /#.
    if => //; first by move=> /> * /#.
     case: (j{1}=255).
      rcondf{1} 3; first by auto.
      rcondf{2} 4; first by auto.
      by auto => /> &1 &2 * /#.
     rcondt{2} 4; first by auto => /> /#.
     rcondf{2} 6; first by move=> &m; auto => /> * /#.
     by auto => /> &1 &2 * /#.
    rcondt{2} 2; first by auto => /> /#.
    rcondf{2} 4; first by move=> &m; auto => /> * /#.
    by auto => /> &1 &2 * /#.   
  + by rcondf 1; auto; smt().
  + by rcondf 1; auto; smt().
  by inline*; auto.
 alias {1} 1 xl = [0].
 transitivity {1}
  { xl <@ MSll.S.map(dlist (dbits 24) 56, flatten \o List.map (spreadbits 8 3));
    k <- 0;
    while (j < 256 && k < 56) {
     d1 <- (nth 0 xl (3*k)) %% W8.modulus + 256 * ((nth 0 xl (3*k+1)) %% W8.modulus %% 16);
     d2 <- (nth 0 xl (3*k+1)) %% W8.modulus %/ 16 + 16 * ((nth 0 xl (3*k+2)) %% W8.modulus);
     if (d1 < q) {
      l <- rcons l (inFq d1);
      j <- j+1;
     }
     if (d2 < q && j < 256) {
      l <- rcons l (inFq d2);
      j <- j+1;
     }
     k <- k+1;
    }
  }
  ( ={j,l} /\ 0 <= j{1} < 256 ==> ={j,l} /\ 0 <= j{1} <= 256 )
  ( ={j} /\ 0 <= j{1} < 256 /\ l{1} = map inFq l{2}
    ==> ={j} /\ 0 <= j{1} <= 256 /\ l{1} = map inFq l{2} ); 1..2:smt().
  seq 2 1: (#pre /\ a{1}=Array168.of_list witness (List.map W8.of_int xl{2}) /\ size xl{2}=168).
   sp; conseq |>.
   transitivity {2} { xl <@ MSll.S.sample(dlist (dbits 24) 56, flatten \o List.map (spreadbits 8 3)); }
    ( ={j, l} /\ (0 <= j{1} && j{1} < 256) 
      ==> a{1} = (of_list witness (map W8.of_int xl{2}))%Array168 /\ size xl{2}=168 )
    ( ={j, l} ==> ={xl} ) ; first 2 smt().
    transitivity {1} { a <@ MSlw168.S.map(dlist (dbits 8) 168, Array168.of_list witness \o List.map W8.of_int); }
     ( ={j, l} /\ (0 <= j{1} && j{1} < 256) 
       ==> ={a} )
     ( ={j, l} ==> a{1} = (of_list witness (map W8.of_int xl{2}))%Array168 /\ size xl{2}=168); first 2 smt().
     by call MSlw168.sample; auto.
    inline*; auto => />; rewrite -dchunk_8_3_56 // => />.
    smt(supp_dlist).
   by call MSll.sample; auto.
  while (k{1}=3*k{2} /\ 0 <= k{1} /\ #post /\ #[/-2:]pre).
   swap {1} 4 4.
   seq 5 2: (#pre /\ ={d1,d2}).
    auto => /> &1 *.
    by rewrite !get_of_list 1..3:/# !(nth_map 0) 1..3:/# !of_uintK.
   by auto => /> &1 * /#.
  by auto => /#.
 inline*; swap 2 1; cfold {1} 1; cfold {1} 2; cfold {2} 1; cfold {2} 2.
 seq 2 2: (#pre /\ r10{2}=r1{1} /\ r1{1} \in dlist (dbits 24) 56
           /\ xl{1} = flatten (List.map (spreadbits 8 3) r1{1})
           /\ xl{2} = flatten (List.map (spreadbits 12 2) r1{1}) ).
  by auto.
 wp; conseq |>.
 while (#post /\ #[/5:]pre /\ k{1}=xn{2} /\ 0 <= k{1} <= 56).
  auto => /> &1 &2 ??.
  rewrite supp_dlist 1://; move => [r1_size /List.allP Hr1] *.
  pose x:= nth 0 r1{1} xn{2}.
  have Ex: x %% 2^24 = x.
   move: (Hr1 x _).
    by rewrite mem_nth /#.
   by rewrite supp_dinter => *; rewrite modz_small /#.
  pose d1:= nth 0 (flatten (map (spreadbits 12 2) r1{1})) (2*xn{2}).
  have Ed1: d1 = x %% 2^12.
   rewrite /d1 (nth_flatten 0 2).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   by rewrite (nth_map 0) 1:/# mulzC mulzK 1:// modzMl nth_mkseq 1:// /x /=.
  pose d2:= nth 0 (flatten (map (spreadbits 12 2) r1{1})) (2*xn{2}+1).
  have Ed2: d2 = x %/ 2^12.
   rewrite /d2 (nth_flatten 0 2).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   rewrite (nth_map 0) 1:/# mulzC divzMDl 1:// divz_small 1:// modzMDl nth_mkseq 1:// /= -divz_mod_mul 1..2:// /=.
   by move: Ex => /= ->.
  pose b1:= nth 0 (flatten (map (spreadbits 8 3) r1{1})) (3*xn{2}).
  have -> {b1}: b1 %% 256 = d1 %% 2^8.
   rewrite Ed1 modz_dvd_pow 1:// /b1 (nth_flatten 0 3).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   by rewrite (nth_map 0) 1:/# mulzC mulzK 1:// modzMl nth_mkseq 1:// /= modz_mod /x /=.
  pose b2:= nth 0 (flatten (map (spreadbits 8 3) r1{1})) (3*xn{2}+1).
  have Eb2': b2 %% 2^8 = b2.
   rewrite /b2 (nth_flatten 0 3).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   by rewrite (nth_map 0) 1:/# mulzC divzMDl 1:// divz_small 1:// modzMDl nth_mkseq 1:// /= modz_mod /x /=.
  have Eb2: b2 = x %% 2^16 %/ 2^8.
   rewrite /b2 (nth_flatten 0 3).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   rewrite (nth_map 0) 1:/# mulzC divzMDl 1:// divz_small 1:// modzMDl nth_mkseq 1://; beta.
   by rewrite (_:2^16=2^8*2^8) 1:// divz_mod_mul 1..2://; congr; congr.
  pose b3:= nth 0 (flatten (map (spreadbits 8 3) r1{1})) (3*xn{2}+2).
  have Eb3: b3 %% 256 = x %% 2^24 %/ 2^16.
   rewrite /b3 (nth_flatten 0 3).
    apply/List.allP => l /=.
    move=> /mapP [ll [_ ->]].
    by rewrite /spreadbits size_mkseq /#.
   rewrite (nth_map 0) 1:/# mulzC divzMDl 1:// divz_small 1:// modzMDl nth_mkseq 1://; beta.
   by rewrite modz_mod (_:2^24=2^8*2^16) 1:// divz_mod_mul 1..2://; congr; congr.
  have <-: d1 = d1 %% 2^8 + 2^8 * (b2 %% 2^8 %% 2^4).
   rewrite modz_dvd_pow 1:// Eb2.
   rewrite -divz_mod_mul 1..2://.
   rewrite -exprD_nneg 1..2:// modz_dvd_pow 1:// Ed1 /=.
   by move: (divz_eq (x%%4096) 256) => {1}->; ring.
  have <-: d2 = b2 %% 256 %/ 16 + 16 * (b3 %% 256).
   rewrite Eb2' Eb3 Ex Eb2 (_:2^16=2^12*2^4) 1://= divz_mul 1:// -Ed2.
   rewrite -divz_mul 1:// (_:2^8*16=2^12) 1:// mulzC.
   rewrite divz_mod_mul 1..2:// -Ed2 /=.
   by move: (divz_eq d2 16) => {1}->; ring.
  by rewrite !map_rcons /#.
 by auto => /> * /#.
by auto.
qed.

clone DMapSampling as MSwlw128 with
 type t1 <- W8.t list,
 type t2 <- W8.t Array128.t.

module CBD2rnd = {
   proc sampleL_real() : poly = {
      var i,a,b,bytes;
      var p : poly;
      var l: Fq list;
      bytes <@ MSwlw128.S.sample(dlist W8.dword 128, Array128.of_list witness);
      l <- [];
      i <- 0;
      while (i < 128) {
        a <- b2i bytes.[i].[0] + b2i bytes.[i].[1];
        b <- b2i bytes.[i].[2] + b2i bytes.[i].[3];
        l <- rcons l (inFq  (a - b));
        a <- b2i bytes.[i].[4] + b2i bytes.[i].[5];
        b <- b2i bytes.[i].[6] + b2i bytes.[i].[7];
        l <- rcons l (inFq  (a - b));
        i <- i + 1;
      }
      p <- Array256.of_list witness l;
      return p;
   }
   proc sample_real() : poly = {
      var i,a,b,bytes;
      var p : poly;
      p <- witness;
      bytes <@ MSwlw128.S.sample(dlist W8.dword 128, Array128.of_list witness);
      i <- 0;
      while (i < 128) {
        a <- b2i bytes.[i].[0] + b2i bytes.[i].[1];
        b <- b2i bytes.[i].[2] + b2i bytes.[i].[3];
        p.[2*i] <- inFq  (a - b);
        a <- b2i bytes.[i].[4] + b2i bytes.[i].[5];
        b <- b2i bytes.[i].[6] + b2i bytes.[i].[7];
        p.[2*i+1] <- inFq  (a - b);
        i <- i + 1;
      }
      return p;
   }
   proc sample_ideal() : poly = {
     var p;
     p <$ dshort_R;
     return p;
   }
   proc sampleL_vec_real() : vector = {
     var i, l, p, v;
     l <- [];
     i <- 0;
     while (i < kvec) {
       p <@ sample_real();
       l <- rcons l p;
       i <- i + 1;
     }
     v <- offunv (nth witness l);
     return v;
   }
   proc sample_vec_real() : vector = {
     var i, p, v;
     v <- witness;
     i <- 0;
     while (i < kvec) {
       p <@ sample_real();
       v <- set v i p;
       i <- i + 1;
     }
     return v;
   }
   proc sample_vec_ideal() : vector = {
     var v;
     v <$ dvector dshort_R;
     return v;
   }
}.

op fcbd2 (w: W8.t) : Fq list =
 [ inFq (b2i w.[0] + b2i w.[1] - b2i w.[2] - b2i w.[3])
 ; inFq (b2i w.[4] + b2i w.[5] - b2i w.[6] - b2i w.[7]) ].

lemma dshort_R_sample:
 dshort_R 
 = dmap (dlist W8.dword 128) (Array256.of_list witness \o flatten \o List.map fcbd2).
proof.
rewrite /dshort_R /darray256 /dshort_elem dcbd_eq_sample // (_:256=2*128) 1:/#.
rewrite eq_sym -dmap_comp -dmap_comp dlist_mul //; congr; congr.
rewrite -dlist_dmap; congr. 
rewrite dlist_dmap /dcbd_sample.
rewrite (_:2=1+1) 1:// dlistS // dlist1 /= dmap_dprodR dmap_dprod !dmap_comp .
rewrite dword_bits (_:8=(2+2)+(2+2)) 1:/# !dlist_add // dmap_dprod !dmap_comp /(\o) /=.
apply eq_dmap_in; move => [ [l1 l2] [l3 l4]] /=.
rewrite !supp_dprod /= !supp_dlist // => /> Hl1 _ Hl2 _ Hl3 _ Hl4 _.
move: l1 Hl1 => [|x11 [|x12 [|x xs]]] //=; last smt(size_ge0).
move: l2 Hl2 => [|x21 [|x22 [|x xs]]] //=; last smt(size_ge0).
move: l3 Hl3 => [|x31 [|x32 [|x xs]]] //=; last smt(size_ge0).
move: l4 Hl4 => [|x41 [|x42 [|x xs]]] //=; last smt(size_ge0).
rewrite /fcbd2 /= /#.
qed.

clone DMapSampling as MSwlpoly with
 type t1 <- W8.t list,
 type t2 <- poly.

equiv CBD2rnd_sampleL_eq:
 CBD2rnd.sample_real ~ CBD2rnd.sampleL_real:
 true ==> ={res}.
proof.
proc.
wp; while (={i,bytes} /\ (0 <= i{1} <= 128) /\ a256l p{1} l{2} (2*i{1})).
 wp; skip => |> &1 &2 *.
 split; first smt().
 rewrite (_:2 * (i{2} + 1) = 2*i{2} + 1 + 1) 1:/#.
 apply a256l_rcons; first smt().
 apply a256l_rcons => //; smt().
wp; call (_:true); first by auto.
wp; skip => |> *.
split; first smt().
move => |> p i l ???.
have ->: i=128 by smt().
by apply a256l_of_list. 
qed.

(** CBD2 proc. (over a random oracle) samples acording
    to the binomial distribution *)
equiv CBD2rnd_equiv:
 CBD2rnd.sample_real ~ CBD2rnd.sample_ideal:
 true ==> ={res}.
proof.
transitivity CBD2rnd.sampleL_real
 (true ==> ={res}) (true ==> ={res}) => //.
 by apply CBD2rnd_sampleL_eq.
proc.
transitivity {2}
 { p <@ MSwlpoly.S.sample(dlist W8.dword 128,
                         Array256.of_list witness \o flatten \o List.map fcbd2); }
 ( true ==> ={p} ) ( true ==> ={p} ) => //; last first.
 inline*; wp; rnd; wp; auto => /> *; smt(dshort_R_sample).
transitivity {2}
 { p <@ MSwlpoly.S.map(dlist W8.dword 128,
                      Array256.of_list witness \o flatten \o List.map fcbd2); }
 ( true ==> ={p} ) ( true ==> ={p} ) => //; last first.
 by symmetry; call MSwlpoly.sample.
inline MSwlpoly.S.map; swap{2} 2 1.
seq 1 2: (to_list bytes{1} = r1{2}).
 transitivity {1}
  { bytes <@ MSwlw128.S.map(dlist W8.dword 128,
                           (of_list witness)%Array128); }
  ( true ==> ={bytes} ) ( true ==> to_list bytes{1} = r1{2} ) => //.
  by call MSwlw128.sample.
 inline*; wp; rnd; wp; auto => /> l; rewrite supp_dlist //.
 by move=> [?_]; rewrite of_listK.
wp; while {1} 
     (0 <= i{1} <= 128 /\ 
      to_list bytes{1} = r1{2} /\
      l{1} = flatten (List.map fcbd2 (take i{1} r1{2})))
     (128-i{1}).
 move=> &m z.
 wp; skip => /> &hr *; split; last smt().
 split. smt().
 rewrite (take_nth witness); first smt(Array128.size_to_list).
 rewrite map_rcons flatten_rcons.
 rewrite Array128.get_to_list -!cats1 -catA /=; congr. 
 rewrite /fcbd2; congr; smt().
wp; skip => /> &1; split.
 by rewrite take0 /= flatten_nil.
move=> i; split; first smt().
move=> *; have ->: i = size (to_list bytes{1}) by smt(Array128.size_to_list).
by rewrite /(\o) /= take_size.
qed.

equiv CBD2rnd_sampleL_vec_eq:
 CBD2rnd.sample_vec_real ~ CBD2rnd.sampleL_vec_real:
 true ==> ={res}.
proof.
proc.
wp; while (={i} /\ (0 <= i{1} <= kvec) /\ 
           size l{2}=i{2} /\ forall k, 0 <= k < i{1} => v{1}.[k] = nth witness l{2} k).
 wp; call (_: true); first by sim.
 skip => |> &1 &2 ?? H ??.
 split; first smt().
 split; first by rewrite size_rcons.
 move=> k ??.
 rewrite /set offunvE 1:/# /=.
 case: (size l{2}=k) => E.
  by rewrite nth_rcons -E ltrr.
 by rewrite nth_rcons (_:k < size l{2}) 1:/# /= -H /#.
wp; skip => |> *.
split; first smt().
move => |> v p l ???.
have H: size p=kvec by smt().
by rewrite eq_vectorP => i Hi; rewrite offunvE /#.
qed.

clone DMapSampling as MSvkvec with
 type t1 <- R list,
 type t2 <- vector.

clone Program as LSvec with
 type t <- poly,
 op d <- dshort_R.

equiv CBD2rnd_vec_equiv:
 CBD2rnd.sample_vec_real ~ CBD2rnd.sample_vec_ideal:
 true ==> ={res}.
proof.
transitivity CBD2rnd.sampleL_vec_real
 (true ==> ={res}) (true ==> ={res}) => //.
 by apply CBD2rnd_sampleL_vec_eq.
proc.
transitivity {1}
 { l <- [];
   i <- 0;
   while (i<kvec) {
    p <@ CBD2rnd.sample_ideal();
    l <- rcons l p;
    i <- i+1;
   }
   v <- offunv (nth witness l); }
 ( true ==> ={v}) (true ==> ={v} ) => //=.
- wp; while (={i,l} /\ 0 <= i{2} <= kvec).
   by wp; call CBD2rnd_equiv; auto => /> /#.
  by auto.
transitivity {1}
 { l <@ LSvec.LoopSnoc.sample(kvec);
   v <- offunv (nth witness l); }
 ( true ==> ={v}) (true ==> ={v} ) => //=.
- inline*; wp.
  while ((i,l){1}=(i0,l0){2} /\ n{2}=kvec /\ 0 <= i{1} <= kvec).
   wp; rnd; auto; smt(cats1).
  by auto.
transitivity {1}
 { l <@ LSvec.Sample.sample(kvec);
   v <- offunv (nth witness l); }
 ( true ==> ={v}) (true ==> ={v} ) => //=.
- by symmetry; wp; call LSvec.Sample_LoopSnoc_eq; auto.
transitivity {2} { v <@ MSvkvec.S.map(dlist dshort_R kvec, fun (l:R list) => offunv (nth witness l)); }
 ( true ==> ={v}) (true ==> ={v} ) => //=.
 by inline*; wp; rnd; auto. 
transitivity {1} { v <@ MSvkvec.S.sample(dlist dshort_R kvec, fun (l:R list) => offunv (nth witness l)); }
 ( true ==> ={v}) (true ==> ={v} ) => //=.
 by symmetry; call MSvkvec.sample; auto.
by inline*; wp; rnd; auto => />; rewrite /dvector -dlist_djoin /#.
qed.


end KyberSpec.


(*************************************************************************)
(**       (end of Kyber Spec)                                           **)
(*************************************************************************)



(*************************************************************************)
(**   Properties related to the NTT formalisation                       **)
(*************************************************************************)

theory NTT_Properties.

lemma exp_neg1_2 :
  ZqField.exp (inFq (-1)) 2 = Zq.one.
proof. by rewrite ZqField.expr2 -inFqM. qed.

lemma exp_neg1_2_ring :
  ZqRing.exp (inFq (-1)) 2 = Zq.one.
proof. by rewrite ZqRing.expr2 -inFqM. qed.

(* @jba: on my setting, the following lemmas appear to require this...*)
hint simplify expr0.

lemma exp_zroot_128 :
  ZqField.exp zroot 128 = inFq (-1).
proof. by rewrite exp_inFq /= inFq_mod eq_sym inFq_mod /q. qed.

lemma exp_zroot_256 :
  ZqField.exp zroot 256 = inFq 1.
proof. by rewrite exp_inFq /= inFq_mod /q. qed.

lemma unit_zroot :
  zroot <> Zq.zero.
proof. by rewrite -eq_inFq /q. qed.

lemma inv_zroot :
  inv zroot = inFq 1175.
proof.
  apply (ZqField.mulIr zroot); [by apply unit_zroot|].
  rewrite ZqField.mulVf; [by apply unit_zroot|].
  by rewrite -inFqM_mod /q.
qed.

lemma exp_zroot n :
  ZqField.exp zroot n =
  inFq (exp 17 (n %% 256) %% q).
proof. by rewrite -!inFq_mod (exp_mod _ _ _ exp_zroot_256) exp_inFq modz_ge0. qed.

lemma exp_ring z n :
  ZqRing.exp z n = ZqField.exp z n.
proof. by rewrite /ZqRing.exp /ZqField.exp; case: (n < 0) => //=. qed.

lemma unit_zroot_ring :
  unit zroot.
proof. by exists (inFq 1175); rewrite -inFqM_mod /q. qed.

lemma exp_zroot_128_ring :
  ZqRing.exp zroot 128 = inFq (-1).
proof. by rewrite exp_ring exp_zroot_128. qed.

lemma exp_zroot_256_ring :
  ZqRing.exp zroot 256 = inFq 1.
proof. by rewrite exp_ring exp_zroot_256. qed.

lemma exp_zroot_ring n :
  ZqRing.exp zroot n =
  inFq (exp 17 (n %% 256) %% q).
proof. by rewrite exp_ring exp_zroot. qed.

lemma eq_exp_zroot_one n :
  ZqRing.exp zroot n = Zq.one <=> n %% 256 = 0.
proof.
  rewrite exp_zroot_ring /q; move: (mem_range_mod n 256 _) => //.
  move: (n %% 256) => {n} n; rewrite -eq_inFq /q.
  do 256!(rewrite range_ltn //=; case; [by move => ->>|]).
  by rewrite range_geq.
qed.


op scale(p : poly, c : Fq) : poly =  Array256.map (fun x => x * c) p.

lemma ntt_scale p c : ntt (scale p c) = scale (ntt p) c.
proof.
  rewrite /ntt /scale !Array256.mapE Array256.tP => i mem_i_range.
  do 3!(rewrite Array256.initiE //=); case: (i %% 2 = 0) => [modi20|Nmodi20].
  + rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int.
    move => j /mem_range mem_j_range /=; rewrite Array256.initiE /=.
    - by apply/mem_range/mem_range_mull => //=; apply/(bsrev_range 7).
    by rewrite ZqRing.mulrAC.
  rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int.
  move => j /mem_range mem_j_range /=; rewrite Array256.initiE /=.
  + by apply/mem_range/mem_range_addr/mem_range_mull => //=; apply/(bsrev_range 7).
  by rewrite ZqRing.mulrAC.
qed.

lemma sum_pred1 f z a b :
  BigDom.BAdd.bigi predT (fun (x : int) => if x = z then f x else Zq.zero) a b =
  if z \in range a b
  then f z
  else Zq.zero.
proof.
  rewrite (BigDom.BAdd.bigEM (pred1 z)).
  rewrite (BigDom.BAdd.eq_big _ (pred1 z) _ (fun x => f z * Zq.one)) //=.
  + by rewrite ZqRing.mulr1 /pred1 => ? ->.
  rewrite -BigDom.BAdd.mulr_sumr BigDom.BAdd.sumr_1.
  rewrite (BigDom.BAdd.eq_big _ (predC (pred1 z)) _ (fun x => Zq.zero)) //.
  + by move => x; rewrite /predC /pred1 /= => ->.
  rewrite BigDom.BAdd.big1_eq ZqRing.addr0 count_uniq_mem ?range_uniq //.
  case: (z \in range a b) => _; rewrite /b2i //=; last first.
  + by move: (ZqRing.mulr0z (Zq.one)); rewrite /ofint /intmul /intmul /= => ->; rewrite ZqRing.mulr0.
  by move: (ZqRing.mulr1z (Zq.one)); rewrite /ofint /intmul /intmul /= => ->; rewrite ZqRing.mulr1.
qed.

require import StdOrder. import IntOrder.
lemma sum_exp z a b :
  BigDom.BAdd.bigi predT (fun n => ZqRing.exp z n) a b =
  if b < a
  then Zq.zero
  else if z = Zq.zero
  then (if 0 \in range a b then Zq.one else Zq.zero)
  else if z = Zq.one
  then inFq (b - a)
  else inv (z - Zq.one) * (ZqRing.exp z b - ZqRing.exp z a).
proof.
  case: (b < a) => [ltba|/lerNgt leab].
  + by rewrite range_geq; [apply/ltzW|rewrite BigDom.BAdd.big_nil].
  case: (z = Zq.zero) => [->>|unitz].
  + rewrite (BigDom.BAdd.eq_big_int _ _ _ (fun x => if x = 0 then Zq.one else Zq.zero)).
    - by move => x _ /=; rewrite ZqRing.expr0z.
    by rewrite sum_pred1.
  case: (z = Zq.one) => [->>|neqz1].
  + rewrite (BigDom.BAdd.eq_big_int _ _ _ (fun _ => Zq.one)).
    - by move => ? _ /=; rewrite ZqRing.expr1z.
    rewrite BigDom.BAdd.sumr_1 // count_predT size_range ler_maxr ?subr_ge0 //. 
    rewrite /ofint. 
    have : 0 <= b - a by smt().
    elim /natind (b-a).
    + by move => n;case (n = 0); smt(@Zq).
    by move => n *; rewrite inFqD ZqRing.mulrS; smt(). 
  move: (neqz1); rewrite -ZqRing.subr_eq0 => unitsub; apply/(ZqRing.mulrI (z - Zq.one)) => //.
  + by apply/unitE.
  rewrite ZqRing.mulrA ZqRing.divrr; [by apply/unitE|rewrite ZqRing.mul1r].
  rewrite ZqRing.mulrDl BigDom.BAdd.mulr_sumr ZqRing.mulNr ZqRing.mul1r.
  pose f n:= ZqRing.exp z n; rewrite (BigDom.BAdd.eq_big_int _ _ _ (f \o (( + ) 1))).
  + move => ? _ /=; rewrite /f /(\o) /= => {f}; rewrite ZqRing.exprD.
    - by apply/unitE.
    by rewrite ZqRing.expr1.
  rewrite -BigDom.BAdd.big_mapT -range_add.
  case/ler_eqVlt: leab => [<<-|ltab].
  + by rewrite !range_geq // BigDom.BAdd.big_nil !ZqRing.subrr.
  rewrite rangeSr -?ltzE // (range_ltn a) //= BigDom.BAdd.big_consT BigDom.BAdd.big_rcons.
  by rewrite {1}/predT /f /=; ring.
qed.

require import BitEncoding. import BitReverse.

lemma invnttK : cancel ntt invntt.
proof.
  move => r; rewrite /ntt /invntt Array256.tP => i /mem_range mem_i_range /=.
  rewrite Array256.initiE //=; move: (mem_range_mod i 2 _) => //; [by move => _; apply mem_range|].
  rewrite range_ltn // range_ltn // range_geq //=.
  case => eq_mod; rewrite eq_mod /=.
  + pose f j:=
      inv (inFq 128) *
      BigDom.BAdd.bigi
        predT
        (fun (j' : int) =>
          idfun
            ( r.[2 * j'] *
              ZqRing.exp zroot ((2 * br j + 1) * (j' - (i %/ 2))) ) )
         0 128.
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j /mem_range mem_j_range /=; rewrite Array256.initiE //=.
      * by apply/mem_range/mem_range_mull.
      rewrite modzMr /= mulKz // -ZqRing.mulrA; congr.
      rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int.
      move => j' /mem_range mem_j'_range /=; rewrite /idfun /= -ZqRing.mulrA; congr.
      by rewrite -ZqRing.exprD //; [apply/unit_zroot_ring|rewrite mulrDr mulrN].
    rewrite -BigDom.BAdd.mulr_sumr -BigDom.BAdd.big_allpairs.
    pose f x y:= r.[2 * y] * ZqRing.exp zroot ((2 * br x + 1) * (y - i %/ 2)).
    rewrite (BigDom.BAdd.eq_big_perm _ _
               (allpairs f (range 0 128) (range 0 128))
               (allpairs (transpose f) (range 0 128) (range 0 128))).
    - by apply/allpairs_swap.
    rewrite /f => {f}; rewrite BigDom.BAdd.big_allpairs.
    pose f x:=
      if x = i %/ 2
      then inFq 128 * r.[2 * x]
      else Zq.zero.
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j /mem_range mem_j_range /=; rewrite /idfun /=.
      rewrite -BigDom.BAdd.mulr_sumr (ZqRing.mulrC).
      rewrite (BigDom.BAdd.eq_big_perm _ _ _ (map br (range 0 128))).
      * rewrite perm_eq_sym; move: (bsrev_range_pow2_perm_eq 7 7 _) => //=.
        by rewrite /br (eq_map (( * ) 1) idfun); [move => ?|rewrite map_id].
      pose f j':= ZqRing.exp (ZqRing.exp zroot (2 * (j - i %/ 2))) j' * ZqRing.exp zroot (j - i %/ 2).
      rewrite BigDom.BAdd.big_mapT (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
      * move => j' /mem_range mem_j'_range; rewrite /(\o) /br bsrev_involutive //= -ZqRing.exprM.
        by rewrite -ZqRing.exprD; [apply/unit_zroot_ring|rewrite mulrAC mulrSl].
      rewrite -BigDom.BAdd.mulr_suml sum_exp /=.
      have ->/=: ZqRing.exp zroot (2 * (j - i %/ 2)) <> Zq.zero.
      * by apply/unitE/ZqRing.unitrX/unit_zroot_ring.
      rewrite eq_exp_zroot_one -(Ring.IntID.subr_eq0 j) -(mulz_modr 2 (j - i %/ 2) 128) //.
      rewrite mulf_eq0 /=; have ->: ((j - i %/ 2) %% 128 = 0 <=> j - i %/ 2 = 0).
      * move: mem_j_range; rewrite (range_cat (i %/ 2)).
        + by rewrite lez_divRL //; move: mem_i_range; apply/mem_range_le.
        + by apply/ltzW/ltz_divLR => //; move: mem_i_range; apply/mem_range_gt.
        rewrite mem_cat /=; case => mem_j_range.
        + rewrite -(modzMDl 1) /= modz_small.
          - rewrite -mem_range mem_range_addl mem_range_subr; move: mem_j_range; apply mem_range_incl => //.
            by rewrite /= addrC subr_le0 ltzW ltz_divLR //; move: mem_i_range; apply/mem_range_gt.
          have -> //=: j - i %/ 2 <> 0.
          - by rewrite subr_eq0 ltr_eqF //; move: mem_j_range; apply/mem_range_gt.
          rewrite addrA subr_eq0 gtr_eqF //; apply (ltr_le_trans 128).
          - by rewrite ltz_divLR //; move: mem_i_range; apply/mem_range_gt.
          by rewrite -ler_subl_addl; move: mem_j_range; apply/mem_range_le.
        rewrite modz_small // -mem_range mem_range_subr; move: mem_j_range; apply/mem_range_incl => //=.
        by rewrite -ler_subl_addl lez_divRL //; move: mem_i_range; apply/mem_range_le.
      case: (j - i %/ 2 = 0) => [->|]; [by rewrite ZqRing.expr0 ZqRing.mulr1|].
      rewrite ZqRing.expr0 -ZqRing.exprM mulrAC /= (exp_ring _ (256 * _)).
      by rewrite (exp_mod _ _ _ exp_zroot_256) // modzMr ZqField.expr0 ZqRing.subrr ZqRing.mulr0 !ZqRing.mul0r.
    rewrite sum_pred1 /= range_div_range //= mem_i_range /= ZqRing.mulrA ZqField.mulVf.
    - by move: (eq_inFq 128 0); rewrite /Zq.zero /q.
    by rewrite ZqRing.mul1r mulrC {2}(divz_eq i 2) eq_mod.
  pose f j:=
    inv (inFq 128) *
    BigDom.BAdd.bigi
      predT
      (fun (j' : int) =>
        idfun
          ( r.[2 * j' + 1] *
            ZqRing.exp zroot ((2 * br j + 1) * (j' - (i %/ 2))) ) )
       0 128.
  rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
  - move => j /mem_range mem_j_range /=; rewrite Array256.initiE //=.
    * by apply/mem_range/mem_range_addr/mem_range_mull.
    rewrite (Ring.IntID.mulrC 2) modzMDl /= divzMDl //= -ZqRing.mulrA; congr.
    rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int.
    move => j' /mem_range mem_j'_range /=; rewrite /idfun /= -ZqRing.mulrA; congr.
    by rewrite -ZqRing.exprD //; [apply/unit_zroot_ring|rewrite mulrDr mulrN].
  rewrite -BigDom.BAdd.mulr_sumr -BigDom.BAdd.big_allpairs.
  pose f x y:= r.[2 * y + 1] * ZqRing.exp zroot ((2 * br x + 1) * (y - i %/ 2)).
  rewrite (BigDom.BAdd.eq_big_perm _ _
             (allpairs f (range 0 128) (range 0 128))
             (allpairs (transpose f) (range 0 128) (range 0 128))).
  - by apply/allpairs_swap.
  rewrite /f => {f}; rewrite BigDom.BAdd.big_allpairs.
  pose f x:=
    if x = i %/ 2
    then inFq 128 * r.[2 * x + 1]
    else Zq.zero.
  rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
  + move => j /mem_range mem_j_range /=; rewrite /idfun /=.
    rewrite -BigDom.BAdd.mulr_sumr (ZqRing.mulrC).
    rewrite (BigDom.BAdd.eq_big_perm _ _ _ (map br (range 0 128))).
    - rewrite perm_eq_sym; move: (bsrev_range_pow2_perm_eq 7 7 _) => //=.
      by rewrite /br (eq_map (( * ) 1) idfun); [move => ?|rewrite map_id].
    pose f j':= ZqRing.exp (ZqRing.exp zroot (2 * (j - i %/ 2))) j' * ZqRing.exp zroot (j - i %/ 2).
    rewrite BigDom.BAdd.big_mapT (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j' /mem_range mem_j'_range; rewrite /(\o) /br bsrev_involutive //= -ZqRing.exprM.
      by rewrite -ZqRing.exprD; [apply/unit_zroot_ring|rewrite mulrAC mulrSl].
    rewrite -BigDom.BAdd.mulr_suml sum_exp /=.
    have ->/=: ZqRing.exp zroot (2 * (j - i %/ 2)) <> Zq.zero.
    - by apply/unitE/ZqRing.unitrX/unit_zroot_ring.
    rewrite eq_exp_zroot_one -(Ring.IntID.subr_eq0 j) -(mulz_modr 2 (j - i %/ 2) 128) //.
    rewrite mulf_eq0 /=; have ->: ((j - i %/ 2) %% 128 = 0 <=> j - i %/ 2 = 0).
    - move: mem_j_range; rewrite (range_cat (i %/ 2)).
      * by rewrite lez_divRL //; move: mem_i_range; apply/mem_range_le.
      * by apply/ltzW/ltz_divLR => //; move: mem_i_range; apply/mem_range_gt.
      rewrite mem_cat /=; case => mem_j_range.
      * rewrite -(modzMDl 1) /= modz_small.
        + rewrite -mem_range mem_range_addl mem_range_subr; move: mem_j_range; apply mem_range_incl => //.
          by rewrite /= addrC subr_le0 ltzW ltz_divLR //; move: mem_i_range; apply/mem_range_gt.
        have -> //=: j - i %/ 2 <> 0.
        + by rewrite subr_eq0 ltr_eqF //; move: mem_j_range; apply/mem_range_gt.
        rewrite addrA subr_eq0 gtr_eqF //; apply (ltr_le_trans 128).
        + by rewrite ltz_divLR //; move: mem_i_range; apply/mem_range_gt.
        by rewrite -ler_subl_addl; move: mem_j_range; apply/mem_range_le.
      rewrite modz_small // -mem_range mem_range_subr; move: mem_j_range; apply/mem_range_incl => //=.
      by rewrite -ler_subl_addl lez_divRL //; move: mem_i_range; apply/mem_range_le.
    case: (j - i %/ 2 = 0) => [->|]; [by rewrite ZqRing.expr0 ZqRing.mulr1|].
    rewrite ZqRing.expr0 -ZqRing.exprM mulrAC /= (exp_ring _ (256 * _)).
    by rewrite (exp_mod _ _ _ exp_zroot_256) // modzMr ZqField.expr0 ZqRing.subrr ZqRing.mulr0 !ZqRing.mul0r.
  rewrite sum_pred1 /= range_div_range //= mem_i_range /= ZqRing.mulrA ZqField.mulVf.
  + by move: (eq_inFq 128 0); rewrite /Zq.zero /q.
  by rewrite ZqRing.mul1r mulrC {2}(divz_eq i 2) eq_mod.
qed.

lemma nttK : cancel invntt ntt.
proof.
  move => r; rewrite /ntt /invntt Array256.tP => i /mem_range mem_i_range /=.
  rewrite Array256.initiE //=; move: (mem_range_mod i 2 _) => //; [by move => _; apply mem_range|].
  rewrite range_ltn // range_ltn // range_geq //=.
  case => eq_mod; rewrite eq_mod /=.
  + pose f j:=
      inv (inFq 128) *
      BigDom.BAdd.bigi
        predT
        (fun (j' : int) =>
          idfun
            ( r.[2 * j'] *
              ZqRing.exp zroot (2 * (br (i %/ 2) - br j') * j) ) )
         0 128.
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j /mem_range mem_j_range /=; rewrite Array256.initiE //=.
      * by apply/mem_range/mem_range_mull.
      rewrite modzMr /= mulKz // BigDom.BAdd.mulr_suml BigDom.BAdd.mulr_sumr.
      apply BigDom.BAdd.eq_big_int => j' /mem_range mem_j'_range /=.
      rewrite /idfun /= -!ZqRing.mulrA; congr; congr.
      by rewrite -ZqRing.exprD //; [apply/unit_zroot_ring|congr; ring].
    rewrite -BigDom.BAdd.mulr_sumr -BigDom.BAdd.big_allpairs.
    pose f x y:= r.[2 * y] * ZqRing.exp zroot (2 * (br (i %/ 2) - br y) * x).
    rewrite (BigDom.BAdd.eq_big_perm _ _
               (allpairs f (range 0 128) (range 0 128))
               (allpairs (transpose f) (range 0 128) (range 0 128))).
    - by apply/allpairs_swap.
    rewrite /f => {f}; rewrite BigDom.BAdd.big_allpairs.
    pose f x:=
      if x = i %/ 2
      then inFq 128 * r.[2 * x]
      else Zq.zero.
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j /mem_range mem_j_range /=; rewrite /idfun /=.
      rewrite -BigDom.BAdd.mulr_sumr (ZqRing.mulrC).
      pose f j':= ZqRing.exp (ZqRing.exp zroot (2 * (br (i %/ 2) - br j))) j'.
      rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
      * by move => j' /mem_range mem_j'_range; rewrite -ZqRing.exprM.
      rewrite sum_exp /=; have ->/=: ZqRing.exp zroot (2 * (br (i %/ 2) - br j)) <> Zq.zero.
      * by apply/unitE/ZqRing.unitrX/unit_zroot_ring.
      rewrite eq_exp_zroot_one -(mulz_modr 2 (br (i %/ 2) - br j) 128) //.
      rewrite (eq_sym j); have <-: br (i %/ 2) = br j <=> i %/ 2 = j.
      * by split => [|->//]; apply bsrev_injective => //; apply/range_div_range.
      rewrite -(Ring.IntID.subr_eq0 (br _)) mulf_eq0 /=.
      have ->: (br (i %/ 2) - br j) %% 128 = 0 <=> br (i %/ 2) - br j = 0.
      * move: (bsrev_range 7 (i %/ 2))  (bsrev_range 7 j) => /=.
        move => {mem_i_range mem_j_range} mem_i_range mem_j_range.
        move: mem_j_range; rewrite (range_cat (br (i %/ 2) + 1)).
        + by rewrite -ler_subl_addr; move: mem_i_range; apply/mem_range_le.
        + by rewrite -ltzE; move: mem_i_range; apply/mem_range_gt.
        rewrite mem_cat /=; case => mem_j_range.
        + rewrite modz_small //= -mem_range mem_range_subl; move: mem_j_range; apply mem_range_incl => //=.
          by rewrite -ltzE addrC subr_lt0; move: mem_i_range; apply mem_range_gt.
        rewrite -(modzMDl 1) /= modz_small.
        + rewrite -mem_range mem_range_addl mem_range_subl; move: mem_j_range; apply mem_range_incl => //=.
          by rewrite -ler_subl_addl; move: mem_i_range; apply/mem_range_le.
        have -> //=: br (i %/ 2) - br j <> 0.
        + by rewrite subr_eq0 ltr_eqF // ltzE; move: mem_j_range; apply/mem_range_le.
        rewrite addrA subr_eq0 gtr_eqF //; apply (ltr_le_trans 128).
        + by move: mem_j_range; apply/mem_range_gt.
        by rewrite -ler_subl_addl; move: mem_i_range; apply/mem_range_le.
      case: (br (i %/ 2) - br j = 0) => [//|].
      rewrite ZqRing.expr0 -ZqRing.exprM mulrAC /= (exp_ring _ (256 * _)).
      by rewrite (exp_mod _ _ _ exp_zroot_256) // modzMr ZqField.expr0 ZqRing.subrr ZqRing.mulr0 !ZqRing.mul0r.
    rewrite sum_pred1 /= range_div_range //= mem_i_range /= ZqRing.mulrA ZqField.mulVf.
    - by move: (eq_inFq 128 0); rewrite /Zq.zero /q.
    by rewrite ZqRing.mul1r mulrC {2}(divz_eq i 2) eq_mod.
  pose f j:=
    inv (inFq 128) *
    BigDom.BAdd.bigi
      predT
      (fun (j' : int) =>
        idfun
          ( r.[2 * j' + 1] *
            ZqRing.exp zroot (2 * (br (i %/ 2) - br j') * j) ) )
       0 128.
  rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
  - move => j /mem_range mem_j_range /=; rewrite Array256.initiE //=.
    * by apply/mem_range/mem_range_addr/mem_range_mull.
    rewrite (Ring.IntID.mulrC 2) modzMDl /= divzMDl //=.
    rewrite BigDom.BAdd.mulr_suml BigDom.BAdd.mulr_sumr; apply BigDom.BAdd.eq_big_int.
    move => j' /mem_range mem_j'_range /=; rewrite /idfun /= -!ZqRing.mulrA; congr; congr.
    by rewrite -ZqRing.exprD //; [apply/unit_zroot_ring|congr; ring].
  rewrite -BigDom.BAdd.mulr_sumr -BigDom.BAdd.big_allpairs.
  pose f x y:= r.[2 * y + 1] * ZqRing.exp zroot (2 * (br (i %/ 2) - br y) * x).
  rewrite (BigDom.BAdd.eq_big_perm _ _
             (allpairs f (range 0 128) (range 0 128))
             (allpairs (transpose f) (range 0 128) (range 0 128))).
  - by apply/allpairs_swap.
  rewrite /f => {f}; rewrite BigDom.BAdd.big_allpairs.
  pose f x:=
    if x = i %/ 2
    then inFq 128 * r.[2 * x + 1]
    else Zq.zero.
  rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
  + move => j /mem_range mem_j_range /=; rewrite /idfun /=.
    rewrite -BigDom.BAdd.mulr_sumr (ZqRing.mulrC).
    pose f j':= ZqRing.exp (ZqRing.exp zroot (2 * (br (i %/ 2) - br j))) j'.
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - by move => j' /mem_range mem_j'_range; rewrite /= -ZqRing.exprM.
    rewrite sum_exp /=.
    have ->/=: ZqRing.exp zroot (2 * (br (i %/ 2) - br j)) <> Zq.zero.
    - by apply/unitE/ZqRing.unitrX/unit_zroot_ring.
    rewrite eq_exp_zroot_one -(mulz_modr 2 (br (i %/ 2) - br j) 128) //.
    rewrite (eq_sym j); have <-: br (i %/ 2) = br j <=> i %/ 2 = j.
    - by split => [|->//]; apply bsrev_injective => //; apply/range_div_range.
    rewrite -(Ring.IntID.subr_eq0 (br _)) mulf_eq0 /=.
    have ->: (br (i %/ 2) - br j) %% 128 = 0 <=> br (i %/ 2) - br j = 0.
    - move: (bsrev_range 7 (i %/ 2))  (bsrev_range 7 j) => /=.
      move => {mem_i_range mem_j_range} mem_i_range mem_j_range.
      move: mem_j_range; rewrite (range_cat (br (i %/ 2) + 1)).
      * by rewrite -ler_subl_addr; move: mem_i_range; apply/mem_range_le.
      * by rewrite -ltzE; move: mem_i_range; apply/mem_range_gt.
      rewrite mem_cat /=; case => mem_j_range.
      * rewrite modz_small //= -mem_range mem_range_subl; move: mem_j_range; apply mem_range_incl => //=.
        by rewrite -ltzE addrC subr_lt0; move: mem_i_range; apply mem_range_gt.
      rewrite -(modzMDl 1) /= modz_small.
      * rewrite -mem_range mem_range_addl mem_range_subl; move: mem_j_range; apply mem_range_incl => //=.
        by rewrite -ler_subl_addl; move: mem_i_range; apply/mem_range_le.
      have -> //=: br (i %/ 2) - br j <> 0.
      * by rewrite subr_eq0 ltr_eqF // ltzE; move: mem_j_range; apply/mem_range_le.
      rewrite addrA subr_eq0 gtr_eqF //; apply (ltr_le_trans 128).
      * by move: mem_j_range; apply/mem_range_gt.
      by rewrite -ler_subl_addl; move: mem_i_range; apply/mem_range_le.
    case: (br (i %/ 2) - br j = 0) => [//|].
    rewrite ZqRing.expr0 -ZqRing.exprM mulrAC /= (exp_ring _ (256 * _)).
    by rewrite (exp_mod _ _ _ exp_zroot_256) // modzMr ZqField.expr0 ZqRing.subrr ZqRing.mulr0 !ZqRing.mul0r.
  rewrite sum_pred1 /= range_div_range //= mem_i_range /= ZqRing.mulrA ZqField.mulVf.
  + by move: (eq_inFq 128 0); rewrite /Zq.zero /q.
  by rewrite ZqRing.mul1r mulrC {2}(divz_eq i 2) eq_mod.
qed.

lemma nttvK : cancel invnttv nttv.
proof. 
rewrite /nttv /invnttv /mapv /= /cancel => x.
rewrite KMatrix.Vector.offunvK /vclamp /kvec /=.
apply KMatrix.Vector.eq_vectorP => i ib.
rewrite KMatrix.Vector.offunvE //=.
smt(nttK).
qed.

lemma invnttvK : cancel nttv invnttv.
proof. 
rewrite /nttv /invnttv /mapv /= /cancel => x.
rewrite KMatrix.Vector.offunvK /vclamp /kvec /=.
apply KMatrix.Vector.eq_vectorP => i ib.
rewrite KMatrix.Vector.offunvE //=.
smt(invnttK).
qed.

lemma nttmK : cancel invnttm nttm.
proof. 
rewrite /nttm /invnttm /mapm /= /cancel => x.
rewrite offunmK /mclamp /kvec /=.
apply eq_matrixP => i ib mr.
rewrite offunmE //=.
smt(nttK).
qed.

lemma invnttmK : cancel nttm invnttm.
rewrite /nttm /invnttm /mapm /= /cancel => x.
rewrite offunmK /mclamp /kvec /=.
apply eq_matrixP => i ib mr.
rewrite offunmE //=.
smt(invnttK).
qed.

lemma invntt_scale p c : invntt (scale p c) = scale (invntt p) c.
proof.
rewrite (_: p = ntt (invntt p)); first by rewrite nttK.
by rewrite -ntt_scale {1}invnttK  nttK.
qed.

lemma polymulE (pa pb : poly) :
  pa &* pb =
  (Array256.init
    (fun (i : int) =>
      BigDom.BAdd.bigi
        predT
        (fun (k : int) =>
          pa.[k] * pb.[(i - k) %% 256] *
          ZqRing.exp (inFq (-1)) ((i - k) %/ 256))
        0 256)).
proof.
  rewrite /( &* ); apply/Array256.tP => i /mem_range mem_i_range.
  do 2!(rewrite Array256.initiE /=; [by apply/mem_range|]).
  rewrite -(ZqRing.addr0 (BigDom.BAdd.big _ _ _)); move: Zq.zero.
  have: (256 \in range 0 257) by apply/mem_range.
  have: (0 <= 256) by trivial.
  move: {1 2 4 7}256; elim => [_ /=|j le0j IHj /mem_range_addr /= mem_j_range] z.
  + by rewrite iota0 //= range_geq //= BigDom.BAdd.big_nil ZqRing.add0r.
  rewrite iotaSr // foldr_rcons /= rangeSr // BigDom.BAdd.big_rcons {1}/predT /=.
  move: mem_j_range; rewrite range_ltn //=; case => [->>//|mem_j_range].
  rewrite IHj; [by move: mem_j_range; apply/mem_range_incl|].
  case: (0 <= i - j) => [le0s|/ltrNge lts0].
  + rewrite divz_small.
    - rewrite le0s /= ltr_subl_addr; move: mem_i_range; apply/mem_range_gt.
      by rewrite -ler_subl_addl; move: mem_j_range; apply/mem_range_le.
    rewrite modz_small.
    - rewrite le0s /= ltr_subl_addr; move: mem_i_range; apply/mem_range_gt.
      by rewrite -ler_subl_addl; move: mem_j_range; apply/mem_range_le.
    by rewrite ZqRing.expr0 ZqRing.mulr1 -!ZqRing.addrA; congr; ring.
  move: (modzMDl 1 (i - j) 256) => /= <-.
  move: (divzMDl 1 (i - j) 256) => /=; rewrite (Ring.IntID.addrC 1) -subr_eq => <-.
  rewrite divz_small.
  + rewrite -mem_range mem_range_addl mem_range lts0 /=.
    rewrite ler_subr_addr; move: mem_i_range; apply/mem_range_le.
    by rewrite addrC subr_le0; move: mem_j_range; apply/mem_range_ge.
  rewrite modz_small.
  + rewrite -mem_range mem_range_addl mem_range lts0 /=.
    rewrite ler_subr_addr; move: mem_i_range; apply/mem_range_le.
    by rewrite addrC subr_le0; move: mem_j_range; apply/mem_range_ge.
  rewrite inFqN /= ZqRing.exprN ZqRing.expr1 ZqRing.invrN1 ZqRing.mulrN ZqRing.mulr1.
  by rewrite -!ZqRing.addrA; congr; ring.
qed.

lemma BigDom_BAdd_big_allpairs_idfun ['a, 'b] (f : 'a -> 'b -> Fq) s t :
  BigDom.BAdd.big predT idfun (allpairs f s t) =
  BigDom.BAdd.big predT (fun (x : 'a) => BigDom.BAdd.big predT (fun (y : 'b) => f x y) t) s.
proof. by rewrite BigDom.BAdd.big_allpairs; apply BigDom.BAdd.eq_big. qed.

lemma BigDom_BAdd_mulr_big_allpairs ['a] f1 f2 (s1 s2 : 'a list) :
  BigDom.BAdd.big predT f1 s1 * BigDom.BAdd.big predT f2 s2 =
  BigDom.BAdd.big predT idfun (allpairs (fun (x1, x2) => f1 x1 * f2 x2) s1 s2).
proof. by rewrite BigDom.mulr_big BigDom_BAdd_big_allpairs_idfun. qed.

lemma allpairs_map ['a, 'b, 'c] (f : 'a -> 'b -> 'c) s t :
  allpairs f s t = map (fun (p : 'a * 'b) => f p.`1 p.`2) (allpairs (fun x y => (x, y)) s t).
proof.
  rewrite /allpairs; elim: s => [|hs ts IHs] //=; move: IHs => ->.
  rewrite map_cat; congr; rewrite -map_comp; apply eq_map => x.
  by rewrite /(\o).
qed.

lemma BigDom_BAdd_big_allpairs_pair ['a, 'b] (f : 'a -> 'b -> Fq) s t :
  BigDom.BAdd.big predT (fun (x : 'a) => BigDom.BAdd.big predT (fun (y : 'b) => f x y) t) s =
  BigDom.BAdd.big predT (fun (p : 'a * 'b) => f p.`1 p.`2) (allpairs (fun (x1, x2) => (x1, x2)) s t).
proof.
  rewrite -BigDom_BAdd_big_allpairs_idfun.
  rewrite (BigDom.BAdd.eq_big _ predT _ (idfun \o (fun (p : 'a * 'b) => f p.`1 p.`2))) //.
  by rewrite -BigDom.BAdd.big_mapT -allpairs_map.
qed.

lemma BigDom_BAdd_mulr_big_allpairs_pair ['a] f1 f2 (s1 s2 : 'a list) :
  BigDom.BAdd.big predT f1 s1 * BigDom.BAdd.big predT f2 s2 =
  BigDom.BAdd.big predT (fun (p : 'a * 'a) => f1 p.`1 * f2 p.`2)
    (allpairs (fun (x1, x2) => (x1, x2)) s1 s2).
proof.
  rewrite BigDom_BAdd_mulr_big_allpairs allpairs_map BigDom.BAdd.big_mapT.
  by apply BigDom.BAdd.eq_big.
qed.

lemma eq_modz_inj (a b m n : int) :
  0 < n =>
  a \in range m (m + n) =>
  b \in range m (m + n) =>
  a %% n = b %% n =>
  a = b.
proof.
  move => lt0n mem_a_range mem_b_range eq_mod.
  rewrite (divz_eq a n) mem_range_addr addrAC mem_range_mulr // in mem_a_range.
  rewrite (Ring.IntID.addrC _ n) -{3}(Ring.IntID.mul1r n) (Ring.IntID.opprD (1 * n)) in mem_a_range.
  rewrite -mulNr divzMDl in mem_a_range; [by apply/gtr_eqF|].
  rewrite (Ring.IntID.opprD (-1)) /= (Ring.IntID.addrC 1) range_ltn in mem_a_range; [by apply/ltzS|].
  rewrite range_geq //= in mem_a_range.
  rewrite (divz_eq b n) mem_range_addr addrAC mem_range_mulr // in mem_b_range.
  rewrite (Ring.IntID.addrC _ n) -{3}(Ring.IntID.mul1r n) (Ring.IntID.opprD (1 * n)) in mem_b_range.
  rewrite -mulNr divzMDl in mem_b_range; [by apply/gtr_eqF|].
  rewrite (Ring.IntID.opprD (-1)) /= (Ring.IntID.addrC 1) range_ltn in mem_b_range; [by apply/ltzS|].
  rewrite range_geq //= in mem_b_range.
  by rewrite (divz_eq a n) (divz_eq b n); congr; congr; rewrite mem_a_range mem_b_range eq_mod.
qed.

lemma perm_mul_even :
  perm_eq
    (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 256))
    (map
      (fun (p : int * int) => ((p.`1 + p.`2 + 1) %% 128, 2 * p.`1 + 1) )
      (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 128)) ++
     map
      (fun (p : int * int) => ((p.`1 + p.`2) %% 128, 2 * p.`1) )
      (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 128))).
proof.
  apply/uniq_perm_eq.
  + by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|].
  + rewrite cat_uniq; split; [|split].
    - rewrite map_inj_in_uniq; [|by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|]].
      move => [x1 x2] [y1 y2] /= /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
      move => /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-] [eq_1].
      move => /Ring.IntID.addIr eq_2; move: (mulfI 2 _ x1 y1 _) => //= <<- /= {eq_2}; move: eq_1.
      rewrite !(Ring.IntID.addrAC _ _ 1); move: (eq_modz_inj (x1 + 1 + x2) (x1 + 1 + y2) (x1 + 1) 128 _ _ _) => //.
      * by rewrite mem_range_addl /= opprD !addrA addrAC /= addrAC.
      * by rewrite mem_range_addl /= opprD !addrA addrAC /= addrAC.
      by move => imp_ hyp_; move: (imp_ hyp_) => {imp_ hyp_} /Ring.IntID.addrI.
    - apply/hasPn => [] [x1 x2] /mapP [] [y1 y2] /= [] /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-].
      move => [->> ->>]; apply/negP => /mapP [] [z1 z2] [] /allpairsP [[? ?] /=] [mem_z1_range] [mem_z2_range] [<<- <<-].
      apply/negP => -[_]; rewrite !(Ring.IntID.mulrC 2) => eq_; have: ((y1 * 2) %% 2 = (z1 * 2 + 1) %% 2) by rewrite eq_.
      by rewrite modzMl modzMDl.
    rewrite map_inj_in_uniq; [|by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|]].
    move => [x1 x2] [y1 y2] /= /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
    move => /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-] [eq_1].
    move => eq_2; move: (mulfI 2 _ x1 y1 _) => //= <<- /= {eq_2}; move: eq_1.
    move: (eq_modz_inj (x1 + x2) (x1 + y2) x1 128 _ _ _) => //.
      * by rewrite mem_range_addl /= addrAC.
      * by rewrite mem_range_addl /= addrAC.
      by move => imp_ hyp_; move: (imp_ hyp_) => {imp_ hyp_} /Ring.IntID.addrI.
  move => [x1 x2]; rewrite mem_cat; split.
  + move => /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
    move: (mem_range_mod x2 2 _) => //.
    rewrite range_ltn // range_ltn // range_geq //=; case => eq_mod.
    - right; apply/mapP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => //=.
      split; [|split]; first last.
      * by rewrite -modzDm modz_mod modzDm addrA addrAC /= modz_small //; apply/mem_range.
      * by rewrite (Ring.IntID.mulrC 2) {1}(divz_eq x2 2) eq_mod.
      apply/allpairsP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => /=.
      by rewrite range_div_range //= mem_x2_range /=; apply/(mem_range_mod _ 128).
    left; apply/mapP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2 -1) %% 128) => //=.
    split; [|split]; first last.
    - by rewrite addrAC -modzDm modz_mod modzDm addrA addrAC /= addrA addrAC /= modz_small //; apply/mem_range.
    - by rewrite (Ring.IntID.mulrC 2) {1}(divz_eq x2 2) eq_mod.
    apply/allpairsP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2 - 1) %% 128) => /=.
    by rewrite range_div_range //= mem_x2_range /=; apply/(mem_range_mod _ 128).
  case; move => /mapP [] [y1 y2] [] /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range];
  move => [<<- <<-] [->> ->>]; apply/allpairsP => /=.
  + exists ((y1 + y2 + 1) %% 128, 2 * y1 + 1) => /=.
    by rewrite mem_range_addr mem_range_mull //= mem_y1_range /=; apply/(mem_range_mod _ 128).
  exists ((y1 + y2) %% 128, 2 * y1) => /=.
  by rewrite mem_range_mull //= mem_y1_range /=; apply/(mem_range_mod _ 128).
qed.

lemma perm_mul_odd :
  perm_eq
    (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 256))
    (map
      (fun (p : int * int) => ((p.`1 + p.`2) %% 128, 2 * p.`1) )
      (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 128)) ++
     map
      (fun (p : int * int) => ((p.`1 + p.`2) %% 128, 2 * p.`1 + 1) )
      (allpairs (fun (x1 x2 : int) => (x1, x2)) (range 0 128) (range 0 128))).
proof.
  apply/uniq_perm_eq.
  + by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|].
  + rewrite cat_uniq; split; [|split].
    - rewrite map_inj_in_uniq; [|by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|]].
      move => [x1 x2] [y1 y2] /= /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
      move => /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-] [eq_1].
      move => eq_2; move: (mulfI 2 _ x1 y1 _) => //= <<- /= {eq_2}; move: eq_1.
      move: (eq_modz_inj (x1 + x2) (x1 + y2) x1 128 _ _ _) => //.
      * by rewrite mem_range_addl /= addrAC.
      * by rewrite mem_range_addl /= addrAC.
      by move => imp_ hyp_; move: (imp_ hyp_) => {imp_ hyp_} /Ring.IntID.addrI.
    - apply/hasPn => [] [x1 x2] /mapP [] [y1 y2] /= [] /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-].
      move => [->> ->>]; apply/negP => /mapP [] [z1 z2] [] /allpairsP [[? ?] /=] [mem_z1_range] [mem_z2_range] [<<- <<-].
      apply/negP => -[_]; rewrite !(Ring.IntID.mulrC 2) => eq_; have: ((y1 * 2 + 1) %% 2 = (z1 * 2) %% 2) by rewrite eq_.
      by rewrite modzMl modzMDl.
    rewrite map_inj_in_uniq; [|by apply/allpairs_uniq; [apply/range_uniq|apply/range_uniq|]].
    move => [x1 x2] [y1 y2] /= /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
    move => /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range] [<<- <<-] [eq_1].
    move => /Ring.IntID.addIr eq_2; move: (mulfI 2 _ x1 y1 _) => //= <<- /= {eq_2}; move: eq_1.
    move: (eq_modz_inj (x1 + x2) (x1 + y2) x1 128 _ _ _) => //.
      * by rewrite mem_range_addl /= addrAC.
      * by rewrite mem_range_addl /= addrAC.
      by move => imp_ hyp_; move: (imp_ hyp_) => {imp_ hyp_} /Ring.IntID.addrI.
  move => [x1 x2]; rewrite mem_cat; split.
  + move => /allpairsP [[? ?] /=] [mem_x1_range] [mem_x2_range] [<<- <<-].
    move: (mem_range_mod x2 2 _) => //.
    rewrite range_ltn // range_ltn // range_geq //=; case => eq_mod; last first.
    - right; apply/mapP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => //=.
      split; [|split]; first last.
      * by rewrite -modzDm modz_mod modzDm addrA addrAC /= modz_small //; apply/mem_range.
      * by rewrite (Ring.IntID.mulrC 2) {1}(divz_eq x2 2) eq_mod.
      apply/allpairsP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => /=.
      by rewrite range_div_range //= mem_x2_range /=; apply/(mem_range_mod _ 128).
    left; apply/mapP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => //=.
    split; [|split]; first last.
    - by rewrite -modzDm modz_mod modzDm addrA addrAC /= modz_small //; apply/mem_range.
    - by rewrite (Ring.IntID.mulrC 2) {1}(divz_eq x2 2) eq_mod.
    apply/allpairsP => /=; exists (x2 %/ 2, (x1 - x2 %/ 2) %% 128) => /=.
    by rewrite range_div_range //= mem_x2_range /=; apply/(mem_range_mod _ 128).
  case; move => /mapP [] [y1 y2] [] /allpairsP [[? ?] /=] [mem_y1_range] [mem_y2_range];
  move => [<<- <<-] [->> ->>]; apply/allpairsP => /=.
  + exists ((y1 + y2) %% 128, 2 * y1) => /=.
    by rewrite mem_range_mull //= mem_y1_range /=; apply/(mem_range_mod _ 128).
  exists ((y1 + y2) %% 128, 2 * y1 + 1) => /=.
  by rewrite mem_range_addr mem_range_mull //= mem_y1_range /=; apply/(mem_range_mod _ 128).
qed.

lemma mul_comm_ntt (pa pb : poly):
  ntt (pa &* pb) = basemul (ntt pa) (ntt pb).
proof.
  rewrite /ntt polymulE /basemul; apply/Array256.tP => i /mem_range mem_i_range.
  do 2!(rewrite Array256.initiE /=; [by apply/mem_range|]).
  rewrite Array256.initiE /=; [by apply/mem_range/mem_range_mull/range_div_range|].
  rewrite Array256.initiE /=; [by apply/mem_range/mem_range_addr/mem_range_mull/range_div_range|].
  rewrite Array256.initiE /=; [by apply/mem_range/mem_range_mull/range_div_range|].
  rewrite Array256.initiE /=; [by apply/mem_range/mem_range_addr/mem_range_mull/range_div_range|].
  rewrite modzMr /= (Ring.IntID.mulrC 2 (i %/ 2)) modzMDl /= divzMDl //= mulzK //=.
  rewrite /cmplx_mul /= !BigDom_BAdd_mulr_big_allpairs_pair.
  move: (mem_range_mod i 2 _) => //.
  rewrite range_ltn // range_ltn // range_geq //=.
  case => eq_mod; rewrite eq_mod /=.
  + pose f j:=
      (BigDom.BAdd.bigi predT
        (fun (k : int) =>
          pa.[k] * pb.[(2 * j - k) %% 256] *
          ZqRing.exp (inFq (-1)) ((2 * j - k) %/ 256) *
          ZqRing.exp zroot ((2 * br (i %/ 2) + 1) * j) )
        0 256).
    rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
    - move => j /mem_range mem_j_range /=.
      rewrite Array256.initiE /=; [by apply/mem_range/mem_range_mull|].
      by rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int => k /mem_range mem_k_range.
    rewrite BigDom_BAdd_big_allpairs_pair (BigDom.BAdd.eq_big_perm _ _ _ _ perm_mul_even).
    rewrite BigDom.BAdd.big_cat; congr.
    - rewrite BigDom.BAdd.big_mapT BigDom.BAdd.mulr_suml.
      apply/BigDom.BAdd.eq_big_seq => //= -[x1 x2].
      move => /allpairsP /= [] [? ?] /= [mem_x1_range] [mem_x2_range] [<<- <<-]; rewrite /(\o) /=.
      rewrite -!ZqRing.mulrA; congr; rewrite !ZqRing.mulrA (ZqRing.mulrC (ZqRing.exp _ _)) -!ZqRing.mulrA.
      rewrite -!ZqRing.exprD; [by apply/unit_zroot_ring|by apply/unit_zroot_ring|].
      rewrite mulz_modr //= -modzDm modz_mod modzDm; congr; [congr|].
      * rewrite !mulrDr addrAC opprD !addrA /= (Ring.IntID.addrAC (2 * _)) /= modz_small //.
        by rewrite -mem_range mem_range_addr mem_range_mull.
      rewrite addrA -mulrDr (Ring.IntID.mulrC _ (x1 + x2)) -mulrSl (Ring.IntID.mulrC (x1 + x2 + 1)).
      rewrite -(mulz_modr 2 (x1 + x2 + 1) 128) // {3}(divz_eq (x1 + x2 + 1) 128).
      rewrite mulrDr !mulrA mulrAC (Ring.IntID.mulrDl _ _ 128) /= mulrAC /= (Ring.IntID.mulrDl _ 128).
      rewrite !ZqRing.exprD ?unit_zroot_ring //; congr.
      rewrite -mulrA ZqRing.exprM exp_zroot_256_ring ZqRing.expr1z ZqRing.mul1r.
      rewrite ZqRing.exprM exp_zroot_128_ring !exp_ring.
      rewrite (exp_mod _ _ _ exp_neg1_2) eq_sym (exp_mod _ _ _ exp_neg1_2) eq_sym; congr.
      move: (mem_range_add2 _ _ _ _ _ _ mem_x1_range mem_x2_range) => /=.
      move => /(mem_range_addr 1 256 (x1 + x2) 1); rewrite (range_cat 128) //.
      rewrite mem_cat; case => mem_add_range.
      * rewrite (modz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
        rewrite (divz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
        rewrite /= !mulrDr opprD !addrA addrAC /= addrAC (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
        by rewrite divz_small //=; apply/mem_range; rewrite mem_range_addr mem_range_mull.
      rewrite -(Ring.IntID.subrK (x1 + x2 + 1) 128) modzDr (divzDr _ 128) ?dvdzz //.
      rewrite (modz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
      rewrite (divz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
      rewrite /= !mulrDr opprD !addrA addrAC /= addrAC (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
      have ->: -255 = 1 + (-1) * 256 by trivial.
      by rewrite addrA addrC divzMDl // divz_small //= -mem_range mem_range_addr mem_range_mull.
    rewrite BigDom.BAdd.big_mapT.
    apply/BigDom.BAdd.eq_big_seq => //= -[x1 x2].
    move => /allpairsP /= [] [? ?] /= [mem_x1_range] [mem_x2_range] [<<- <<-]; rewrite /(\o) /=.
    rewrite -!ZqRing.mulrA; congr; rewrite !ZqRing.mulrA (ZqRing.mulrC (ZqRing.exp _ _)) -!ZqRing.mulrA.
    rewrite -ZqRing.exprD; [by apply/unit_zroot_ring|].
    rewrite mulz_modr //= -modzDm modz_mod modzDm; congr; [congr|].
    - rewrite !mulrDr addrAC /= modz_small //.
      by rewrite -mem_range mem_range_mull.
    rewrite -mulrDr (Ring.IntID.mulrC _ (x1 + x2)).
    rewrite (Ring.IntID.mulrC _ 2) -(mulz_modr 2 (x1 + x2) 128) // {3}(divz_eq (x1 + x2) 128).
    rewrite mulrDr !mulrA mulrAC (Ring.IntID.mulrDl _ _ 128) /= mulrAC /= (Ring.IntID.mulrDl _ 128).
    rewrite !ZqRing.exprD ?unit_zroot_ring //; congr.
    rewrite -mulrA ZqRing.exprM exp_zroot_256_ring ZqRing.expr1z ZqRing.mul1r.
    rewrite ZqRing.exprM exp_zroot_128_ring !exp_ring.
    rewrite (exp_mod _ _ _ exp_neg1_2) eq_sym (exp_mod _ _ _ exp_neg1_2) eq_sym; congr.
    move: (mem_range_add2 _ _ _ _ _ _ mem_x1_range mem_x2_range) => /=.
    rewrite (range_cat 128) //.
    rewrite mem_cat; case => mem_add_range.
    - rewrite (modz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
      rewrite (divz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
      rewrite /= !mulrDr addrAC /=.
      by rewrite divz_small //=; apply/mem_range; rewrite mem_range_mull.
    rewrite -(Ring.IntID.subrK (x1 + x2) 128) modzDr (divzDr _ 128) ?dvdzz //.
    rewrite (modz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
    rewrite (divz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
    rewrite /= !mulrDr addrAC /= (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
    have ->: -256 = (-1) * 256 by trivial.
    by rewrite addrC divzMDl // divz_small //= -mem_range mem_range_mull.
  pose f j:=
    (BigDom.BAdd.bigi predT
      (fun (k : int) =>
        pa.[k] * pb.[(2 * j + 1 - k) %% 256] *
        ZqRing.exp (inFq (-1)) ((2 * j + 1 - k) %/ 256) *
        ZqRing.exp zroot ((2 * br (i %/ 2) + 1) * j) )
      0 256).
  rewrite (BigDom.BAdd.eq_big_int _ _ _ f); rewrite /f => {f}.
  + move => j /mem_range mem_j_range /=.
    rewrite Array256.initiE /=; [by apply/mem_range/mem_range_addr/mem_range_mull|].
    by rewrite BigDom.BAdd.mulr_suml; apply BigDom.BAdd.eq_big_int => k /mem_range mem_k_range.
  rewrite BigDom_BAdd_big_allpairs_pair (BigDom.BAdd.eq_big_perm _ _ _ _ perm_mul_odd).
  rewrite BigDom.BAdd.big_cat; congr.
  + rewrite BigDom.BAdd.big_mapT.
    apply/BigDom.BAdd.eq_big_seq => //= -[x1 x2].
    move => /allpairsP /= [] [? ?] /= [mem_x1_range] [mem_x2_range] [<<- <<-]; rewrite /(\o) /=.
    rewrite -!ZqRing.mulrA; congr; rewrite !ZqRing.mulrA (ZqRing.mulrC (ZqRing.exp _ _)) -!ZqRing.mulrA.
    rewrite -!ZqRing.exprD; [by apply/unit_zroot_ring|].
    rewrite -addrA mulz_modr //= -modzDm modz_mod modzDm; congr; [congr|].
    - rewrite addrA addrAC mulrDr (Ring.IntID.addrAC (2 * _)) /= modz_small //.
      by rewrite -mem_range mem_range_addr mem_range_mull.
    rewrite -mulrDr -(mulz_modr 2 (x1 + x2) 128) // {3}(divz_eq (x1 + x2) 128).
    rewrite mulrDr !mulrA mulrAC (Ring.IntID.mulrDl _ _ 128) /= mulrAC /= (Ring.IntID.mulrDl _ 128).
    rewrite !ZqRing.exprD ?unit_zroot_ring //; congr.
    rewrite -mulrA ZqRing.exprM exp_zroot_256_ring ZqRing.expr1z ZqRing.mul1r.
    rewrite ZqRing.exprM exp_zroot_128_ring !exp_ring.
    rewrite (exp_mod _ _ _ exp_neg1_2) eq_sym (exp_mod _ _ _ exp_neg1_2) eq_sym; congr.
    move: (mem_range_add2 _ _ _ _ _ _ mem_x1_range mem_x2_range) => /=.
    rewrite (range_cat 128) //.
    rewrite mem_cat; case => mem_add_range.
    - rewrite (modz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
      rewrite (divz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
      rewrite /= !mulrDr !addrA addrAC /= (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
      by rewrite divz_small //=; apply/mem_range; rewrite mem_range_addr mem_range_mull.
    rewrite -(Ring.IntID.subrK (x1 + x2) 128) modzDr (divzDr _ 128) ?dvdzz //.
    rewrite (modz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
    rewrite (divz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
    rewrite /= !mulrDr !addrA /= addrAC (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
    have ->: -255 = 1 + (-1) * 256 by trivial.
    by rewrite addrA addrC divzMDl // divz_small //= -mem_range mem_range_addr mem_range_mull.
  rewrite BigDom.BAdd.big_mapT.
  apply/BigDom.BAdd.eq_big_seq => //= -[x1 x2].
  move => /allpairsP /= [] [? ?] /= [mem_x1_range] [mem_x2_range] [<<- <<-]; rewrite /(\o) /=.
  rewrite -!ZqRing.mulrA; congr; rewrite !ZqRing.mulrA (ZqRing.mulrC (ZqRing.exp _ _)) -!ZqRing.mulrA.
  rewrite -ZqRing.exprD; [by apply/unit_zroot_ring|].
  rewrite opprD !addrA addrAC /= mulz_modr //= -modzDm modz_mod modzDm; congr; [congr|].
  + rewrite !mulrDr addrAC /= modz_small //.
    by rewrite -mem_range mem_range_mull.
  rewrite -mulrDr (Ring.IntID.mulrC _ (x1 + x2)).
  rewrite (Ring.IntID.mulrC _ 2) -(mulz_modr 2 (x1 + x2) 128) // {3}(divz_eq (x1 + x2) 128).
  rewrite mulrDr !mulrA mulrAC (Ring.IntID.mulrDl _ _ 128) /= mulrAC /= (Ring.IntID.mulrDl _ 128).
  rewrite !ZqRing.exprD ?unit_zroot_ring //; congr.
  rewrite -mulrA ZqRing.exprM exp_zroot_256_ring ZqRing.expr1z ZqRing.mul1r.
  rewrite ZqRing.exprM exp_zroot_128_ring !exp_ring.
  rewrite (exp_mod _ _ _ exp_neg1_2) eq_sym (exp_mod _ _ _ exp_neg1_2) eq_sym; congr.
  move: (mem_range_add2 _ _ _ _ _ _ mem_x1_range mem_x2_range) => /=.
  rewrite (range_cat 128) //.
  rewrite mem_cat; case => mem_add_range.
  + rewrite (modz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
    rewrite (divz_small _ 128); [by apply/mem_range; move: mem_add_range; apply/mem_range_incl|].
    rewrite /= !mulrDr addrAC /=.
    by rewrite divz_small //=; apply/mem_range; rewrite mem_range_mull.
  rewrite -(Ring.IntID.subrK (x1 + x2) 128) modzDr (divzDr _ 128) ?dvdzz //.
  rewrite (modz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
  rewrite (divz_small _ 128); [by apply/mem_range/mem_range_subr; move: mem_add_range; apply/mem_range_incl|].
  rewrite /= !mulrDr addrAC (Ring.IntID.addrAC _ _ (- 2 * _)) /=.
  have ->: -256 = (-1) * 256 by trivial.
  by rewrite addrC divzMDl // divz_small //= -mem_range mem_range_mull.
qed.

lemma add_comm_ntt (pa pb : poly):
  ntt (pa &+ pb) = (ntt pa) &+ (ntt pb).
proof.
  rewrite /ntt /(&+); apply/Array256.tP => i /mem_range mem_i_range.
  rewrite Array256.map2iE /=; [by apply/mem_range|].
  do 3!(rewrite Array256.initiE /=; [by apply/mem_range|]).
  case: (i %% 2 = 0) => eq_mod.
  + rewrite -BigDom.BAdd.big_split; apply BigDom.BAdd.eq_big_int.
    move => j /mem_range mem_j_range /=.
    rewrite Array256.map2iE /=; [by apply/mem_range/mem_range_mull|].
    by rewrite ZqRing.mulrDl.
  rewrite -BigDom.BAdd.big_split; apply BigDom.BAdd.eq_big_int.
  move => j /mem_range mem_j_range /=.
  rewrite Array256.map2iE /=; [by apply/mem_range/mem_range_addr/mem_range_mull|].
  by rewrite ZqRing.mulrDl.
qed.

lemma add_comm_invntt (pa pb : poly) : 
  invntt (pa &+ pb) = (invntt pa) &+ (invntt pb)
    by smt(invnttK nttK add_comm_ntt).

lemma mul_comm_invntt : forall (pa pb : poly), 
  invntt (basemul pa  pb) = (invntt pa) &* (invntt pb)
    by smt(invnttK nttK mul_comm_ntt).

lemma nttZero : ntt KPoly.zero = KPoly.zero.
proof.
  rewrite /ntt /KPoly.zero; apply/Array256.tP => i /mem_range mem_i_range.
  rewrite Array256.createiE; [by apply/mem_range|].
  rewrite Array256.initiE /=; [by apply/mem_range|].
  rewrite (BigDom.BAdd.eq_big_int _ _ _ (fun _ => Zq.zero)).
  + move => j /mem_range mem_j_range /=.
    rewrite Array256.createiE; [by apply/mem_range/mem_range_mull|].
    by rewrite ZqRing.mul0r.
  rewrite BigDom.BAdd.big1_eq.
  rewrite (BigDom.BAdd.eq_big_int _ _ _ (fun _ => Zq.zero)).
  + move => j /mem_range mem_j_range /=.
    rewrite Array256.createiE; [by apply/mem_range/mem_range_addr/mem_range_mull|].
    by rewrite ZqRing.mul0r.
  by rewrite BigDom.BAdd.big1_eq; case: (i %% 2 = 0).
qed.

lemma invnttzero : invntt KPoly.zero = KPoly.zero by 
   smt(invnttK nttZero).

lemma nttv_add (v1 v2 : vector) :
   nttv (v1 + v2) = nttv v1 + nttv v2.
proof.
rewrite /nttv /mapv. 
rewrite eq_vectorP => x H.
rewrite !offunvE //= offunvK /vclamp H //= !offunvE //=. 
by rewrite add_comm_ntt.
qed.

lemma mulvec a b :
   dotp a b = 
    invntt (basemul (ntt a.[0]) (ntt b.[0])) &+
    invntt (basemul (ntt a.[1]) (ntt b.[1])) &+
    invntt (basemul (ntt a.[2]) (ntt b.[2])).
proof.
rewrite -!mul_comm_ntt !invnttK.
rewrite /dotp => />. 
rewrite /Big.BAdd.big /range /kvec -iotaredE /predT => /=.
by ring.
qed.

lemma comm_nttv_add v1 v2:  nttv (v1 + v2)%Vector = nttv v1 + nttv v2.
rewrite /Vector.(+) /= Vector.eq_vectorP => i ib.
by rewrite /nttv /mapv !offunvE //= !offunvE //= offunvK /vclamp /= ib /= add_comm_ntt.
qed.

lemma comm_nttv_mmul a v: nttv (a *^ v) = ntt_mmul (nttm a) (nttv v).
proof.
rewrite /nttv /ntt_mmul /nttm /mapv /mapm /= /kvec /( *^).
rewrite /Big.BAdd.big /range /kvec -iotaredE /predT => /=.
rewrite !offunvE //= Vector.eq_vectorP => i ib.
rewrite !offunvE //= offunvK /vclamp /= !offunmE //=.
by rewrite -!mul_comm_ntt ib /= !add_comm_ntt nttZero. 
qed.

lemma comm_ntt_dotp (v1 v2 : vector):   dotp (invnttv v1) v2 = invntt (ntt_dotp v1 (nttv v2)).
rewrite /ntt_dotp /nttv /invnttv /mapv /dotp.
rewrite /Big.BAdd.big /range /kvec -iotaredE /predT => /=.
rewrite !offunvE //=.
by rewrite !add_comm_invntt !mul_comm_invntt -nttZero !invnttK nttZero. 
qed.

lemma dotpmm (a : matrix) (v : vector) r :
  0 <= r < 3 =>
  (ntt (dotp (invnttv (offunv (fun (i : int) => a.[r, i]))) (invnttv v))) =
  (ntt_mmul a v).[r].
move => rb.
rewrite /ntt_mmul /dotp /kvec !offunvE //=.
rewrite /Big.BAdd.big /range /kvec -iotaredE /predT => /=.
rewrite !offunvE //= !offunvK /= /vclamp /kvec /=.
by rewrite !add_comm_ntt !mul_comm_ntt !nttK nttZero. 
qed.

lemma nttvecinv v i: 0 <= i < kvec => ntt (invnttv v).[i] = v.[i]
  by move => ib; rewrite /invnttv /mapv/= offunvE //= nttK.


end NTT_Properties.


(* -------------------------------------------------------------------- *)
open EcBigInt
open EcMaps
open EcSymbols
open EcLocation
open EcUtils

(* -------------------------------------------------------------------- *)
exception ParseError of EcLocation.t * string option

(* -------------------------------------------------------------------- *)
type side  = [`Left | `Right]
type oside = side option

let side2str (side : side) =
  match side with
  | `Left  -> "left"
  | `Right -> "right"

let negside (side : side) : side =
  match side with `Left -> `Right | `Right -> `Left

let sideif (side : side) xt xf =
  match side with `Left -> xt | `Right -> xf

(* -------------------------------------------------------------------- *)
let qsymb_of_symb (x : symbol) : qsymbol = ([], x)

(* -------------------------------------------------------------------- *)
type psymbol   = symbol  located
type pqsymbol  = qsymbol located
type pmsymbol  = (psymbol * ((pmsymbol located) list) option) list
type pgamepath = (pmsymbol * psymbol) located

type osymbol_r   = psymbol option
type osymbol     = osymbol_r located

(* -------------------------------------------------------------------- *)
type pty_r =
  | PTunivar
  | PTtuple  of pty list
  | PTnamed  of pqsymbol
  | PTvar    of psymbol
  | PTapp    of pqsymbol * pty list
  | PTfun    of pty * pty
  | PTglob   of pmsymbol located
and pty = pty_r located

type ptyannot_r =
  | TVIunamed of pty list
  | TVInamed  of (psymbol * pty) list

and ptyannot  = ptyannot_r  located

type plpattern_r =
  | LPSymbol of psymbol
  | LPTuple  of osymbol list
  | LPRecord of (pqsymbol * psymbol) list

and plpattern = plpattern_r located

type ppattern =
| PPApp of (pqsymbol * ptyannot option) * osymbol list

type ptybinding  = osymbol list * pty
and  ptybindings = ptybinding list

and pexpr_r =
  | PEcast   of pexpr * pty                       (* type cast          *)
  | PEint    of zint                              (* int. literal       *)
  | PEdecimal of (zint * (int * zint))             (* dec. literal       *)
  | PEident  of pqsymbol * ptyannot option        (* symbol             *)
  | PEapp    of pexpr * pexpr list                (* op. application    *)
  | PElet    of plpattern * pexpr_wty * pexpr     (* let binding        *)
  | PEtuple  of pexpr list                        (* tuple constructor  *)
  | PEif     of pexpr * pexpr * pexpr             (* _ ? _ : _          *)
  | PEmatch  of pexpr * (ppattern * pexpr) list   (* match              *)
  | PEforall of ptybindings * pexpr               (* forall quant.      *)
  | PEexists of ptybindings * pexpr               (* exists quant.      *)
  | PElambda of ptybindings * pexpr               (* lambda abstraction *)
  | PErecord of pexpr option * pexpr rfield list  (* record             *)
  | PEproj   of pexpr * pqsymbol                  (* projection         *)
  | PEproji  of pexpr * int                       (* tuple projection   *)
  | PEscope  of pqsymbol * pexpr                  (* scope selection    *)

and pexpr = pexpr_r located
and pexpr_wty = pexpr * pty option

and 'a rfield = {
  rf_name  : pqsymbol;
  rf_tvi   : ptyannot option;
  rf_value : 'a;
}

(* -------------------------------------------------------------------- *)
type plvalue_r =
  | PLvSymbol of pqsymbol
  | PLvTuple  of pqsymbol list
  | PLvMap    of pqsymbol * ptyannot option * pexpr

and plvalue = plvalue_r located

type pinstr_r =
  | PSident  of psymbol
  | PSasgn   of plvalue * pexpr
  | PSrnd    of plvalue * pexpr
  | PScall   of plvalue option * pgamepath * (pexpr list) located
  | PSif     of pscond * pscond list * pstmt
  | PSwhile  of pscond
  | PSmatch  of pexpr * psmatch
  | PSassert of pexpr

and psmatch = [
  | `Full of (ppattern * pstmt) list
  | `If   of (ppattern * pstmt) * pstmt option
]

and pscond = pexpr * pstmt
and pinstr = pinstr_r located
and pstmt  = pinstr list

(* -------------------------------------------------------------------- *)
type is_local = [ `Local | `Global]

type locality = [`Declare | `Local | `Global]

(* -------------------------------------------------------------------- *)
type pmodule_type = pqsymbol

type ptyparams = (psymbol * pqsymbol list) list
type ptydname  = (ptyparams * psymbol) located

type ptydecl = {
  pty_name   : psymbol;
  pty_tyvars : ptyparams;
  pty_body   : ptydbody;
  pty_locality : locality;
}

and ptydbody =
  | PTYD_Abstract of pqsymbol list
  | PTYD_Alias    of pty
  | PTYD_Record   of precord
  | PTYD_Datatype of pdatatype

and pdatatype = (psymbol * pty list) list

and precord = (psymbol * pty) list

(* -------------------------------------------------------------------- *)
type f_or_mod_ident =
  | FM_FunOrVar of pgamepath
  | FM_Mod of pmsymbol located


type pmod_restr_mem_el =
  | PMPlus    of f_or_mod_ident
  | PMMinus   of f_or_mod_ident
  | PMDefault of f_or_mod_ident

(* A memory restricition. *)
type pmod_restr_mem = pmod_restr_mem_el list

(* -------------------------------------------------------------------- *)
type pmemory   = psymbol

type phoarecmp = EcFol.hoarecmp

type glob_or_var =
  | GVglob of pmsymbol located * pqsymbol list
  | GVvar  of pqsymbol

type pformula  = pformula_r located

and pformula_r =
  | PFhole
  | PFcast    of pformula * pty
  | PFint     of zint
  | PFdecimal of (zint * (int * zint))
  | PFtuple   of pformula list
  | PFident   of pqsymbol * ptyannot option
  | PFref     of psymbol * pffilter list
  | PFmem     of psymbol
  | PFside    of pformula * symbol located
  | PFapp     of pformula * pformula list
  | PFif      of pformula * pformula * pformula
  | PFmatch   of pformula * (ppattern * pformula) list
  | PFlet     of plpattern * (pformula * pty option) * pformula
  | PFforall  of pgtybindings * pformula
  | PFexists  of pgtybindings * pformula
  | PFlambda  of ptybindings * pformula
  | PFrecord  of pformula option * pformula rfield list
  | PFproj    of pformula * pqsymbol
  | PFproji   of pformula * int
  | PFglob    of pmsymbol located
  | PFeqveq   of glob_or_var list * (pmsymbol pair) option
  | PFeqf     of pformula list
  | PFlsless  of pgamepath
  | PFscope   of pqsymbol * pformula

  | PFhoareF   of pformula * pgamepath * pformula
  | PFequivF   of pformula * (pgamepath * pgamepath) * pformula
  | PFeagerF   of pformula * (pstmt * pgamepath * pgamepath * pstmt) * pformula
  | PFprob     of pgamepath * (pformula list) * pmemory * pformula
  | PFBDhoareF of pformula * pgamepath * pformula * phoarecmp * pformula
  | PFChoareF  of pformula * pgamepath * pformula * pcost
  | PFChoareFT of pgamepath * pcost
  | PFCoe      of osymbol * pmemtype option * pformula * pexpr * pty option

and pmemtype_el = ([`Single|`Tuple] * (psymbol list)) located * pty
and pmemtype    = pmemtype_el list

and pgtybinding  = osymbol list * pgty
and pgtybindings = pgtybinding list

and pgscbinding  = psymbol list * pty
and pgscbindings = pgscbinding list

and pgty =
| PGTY_Type  of pty
| PGTY_ModTy of pmodule_type_restr
| PGTY_Mem   of pmemtype option

and pffilter =
| PFRange      of bool * pfrange list
| PFMatch      of bool * psymbol * pformula
| PFMatchBuild of bool * psymbol list * pformula * pformula
| PFKeep       of bool * bool * bool * pffilter_pattern

and pffilter_pattern = [
  | `Pattern of pformula
  | `VarSet  of (pqsymbol * psymbol option) list
]

and pfrange = [
  | `Single of pfindex
  | `Range  of pfindex option pair
]

and pfindex = [ `Index of int | `Match of pformula * int option]

and pcost_call  = psymbol * psymbol * pformula
and pcost_calls = pcost_call list

and pcost  = PC_costs of pformula * pcost_calls

(* if [pmty_mem] is [None], there are no user-supplied restriction, which is
   different from the user supplying an empty restriction.
   In the former case, we keep the restriction we obtain by type-checking,
   while in the latter case, we replace the type-checking restriction by an
   empty restriction.  *)
and pmodule_type_restr =
  { pmty_pq  : pqsymbol;
    pmty_mem : pmod_restr option; }

(* -------------------------------------------------------------------- *)
(* qident optionally taken in a (implicit) module parameters. *)
and qident_inparam = { inp_in_params : bool;
	                     inp_qident    : pqsymbol; }

and poracles = qident_inparam list

and pcompl = PCompl of pformula * (qident_inparam * pformula) list

and pmod_restr_el = {
	pmre_name  : psymbol;
  pmre_orcls : poracles option;  (* None means no restriction *)
  pmre_compl : pcompl option;    (* None means no restriction *)
}

and pmod_restr = {
  pmr_mem   : pmod_restr_mem;
	pmr_procs : pmod_restr_el list;
 }

(* -------------------------------------------------------------------- *)
and pmodule_sig =
  | Pmty_struct of pmodule_sig_struct

and pmodule_sig_struct = {
  pmsig_params : (psymbol * pmodule_type) list;
  pmsig_body   : pmodule_sig_struct_body;
  pmsig_restr  : pmod_restr option;
}

and pmodule_sig_struct_body = pmodule_sig_item list

and minclude_proc = [
  | `MInclude of psymbol list
  | `MExclude of psymbol list
]

and pmodule_sig_item = [
  | `Include      of pmodule_type * minclude_proc option * qident_inparam list option
  | `FunctionDecl of pfunction_decl
]

and pvariable_decl = {
  pvd_name : psymbol;
  pvd_type : pty;
}

and fun_params = (osymbol * pty) list

and pfunction_decl = {
  pfd_name     : psymbol;
  pfd_tyargs   : fun_params;
  pfd_tyresult : pty;
  pfd_uses     : pmod_restr_el;
}

(* -------------------------------------------------------------------- *)
and pmodule_def_or_decl = {
  ptm_locality : locality;
  ptm_def      : [`Concrete of pmodule_def | `Abstract of pmodule_decl];
}

and pmodule_decl = {
  ptm_name  : psymbol;
  ptm_modty : pmodule_type_restr;
}

and pmodule_def = {
  ptm_header : pmodule_header;
  ptm_body   : pmodule_expr;
}

and pmodule_header =
  | Pmh_ident  of psymbol
  | Pmh_params of (pmodule_header * pmodule_params) located
  | Pmh_cast   of pmodule_header * pqsymbol list

and pmodule_params = (psymbol * pmodule_type) list

and pmodule_expr_r =
  | Pm_ident  of pmsymbol
  | Pm_struct of pstructure

and pmodule_expr = pmodule_expr_r located

and pstructure = pstructure_item located list

and pstructure_item =
  | Pst_mod      of (psymbol * pqsymbol list * pmodule_expr)
  | Pst_var      of (psymbol list * pty)
  | Pst_fun      of (pfunction_decl * pfunction_body)
  | Pst_alias    of (psymbol * pgamepath)
  | Pst_include  of (pmsymbol located * bool * minclude_proc option)
  | Pst_import   of (pmsymbol located) list


and pfunction_body = {
  pfb_locals : pfunction_local list;
  pfb_body   : pstmt;
  pfb_return : pexpr option;
}

and pfunction_local = {
  pfl_names : ([`Single|`Tuple] * (psymbol list)) located;
  pfl_type  : pty   option;
  pfl_init  : pexpr option;
}

type pinterface = {
  pi_name : psymbol;
  pi_sig : pmodule_sig;
  pi_locality : is_local;
}

(* -------------------------------------------------------------------- *)
let rec pf_ident ?(raw = false) f =
  match unloc f with
  | PFident ({ pl_desc = ([], x) }, _) -> Some x
  | PFtuple [f] when not raw -> pf_ident ~raw f
  | _ -> None

(* -------------------------------------------------------------------- *)
type ptyvardecls =
  (psymbol * pqsymbol list) list

type pop_def =
  | PO_abstr of pty
  | PO_concr of pty * pexpr
  | PO_case  of pty * pop_branch list
  | PO_reft  of pty * (psymbol * pformula)

and pop_branch = {
  pop_patterns : pop_pattern list;
  pop_body     : pexpr;
}

and pop_pattern = {
  pop_name    : psymbol;
  pop_pattern : ppattern;
}

type poperator = {
  po_kind   : [`Op | `Const];
  po_name   : psymbol;
  po_aliases: psymbol list;
  po_tags   : psymbol list;
  po_tyvars : ptyvardecls option;
  po_args   : ptybindings;
  po_def    : pop_def;
  po_ax     : osymbol_r;
  po_nosmt  : bool;
  po_locality : locality;
}

and pprocop = {
  ppo_name   : psymbol;
  ppo_target : pgamepath;
}

type ppred_def =
  | PPabstr of pty list
  | PPconcr of ptybindings * pformula
  | PPind   of ppind

and ppind_ctor = {
  pic_name : psymbol;
  pic_bds  : pgtybindings;
  pic_spec : pformula list;
}

and ppind = ptybindings * (ppind_ctor list)

type ppredicate = {
  pp_name   : psymbol;
  pp_tyvars : (psymbol * pqsymbol list) list option;
  pp_def    : ppred_def;
  pp_locality  : locality;
}

(* -------------------------------------------------------------------- *)
type pnotation = {
  nt_name  : psymbol;
  nt_tv    : ptyvardecls option;
  nt_bd    : (psymbol * pty) list;
  nt_args  : (psymbol * (psymbol list * pty option)) list;
  nt_codom : pty;
  nt_body  : pexpr;
  nt_local : is_local;
}

(* -------------------------------------------------------------------- *)
type abrvopt  = [`Printing]
type abrvopts = (bool * abrvopt) list

type pabbrev = {
  ab_name  : psymbol;
  ab_tv    : ptyvardecls option;
  ab_args  : ptybindings;
  ab_def   : pty * pexpr;
  ab_opts  : abrvopts;
  ab_local : is_local;
}

(* -------------------------------------------------------------------- *)
type 'a ppt_head =
  | FPNamed of pqsymbol * ptyannot option
  | FPCut   of 'a

type ppt_arg =
  | EA_none
  | EA_form  of pformula
  | EA_mem   of pmemory
  | EA_mod   of pmsymbol located
  | EA_proof of (pformula option) gppterm

and 'a gppterm = {
  fp_mode : [`Implicit | `Explicit];
  fp_head : 'a ppt_head;
  fp_args : ppt_arg located list
}

type ppterm  = (pformula option) gppterm

type pcutdef = {
  ptcd_name : pqsymbol;
  ptcd_tys  : ptyannot option;
  ptcd_args : ppt_arg located list;
}

(* λ mem → formula *)
type pmpred_args = (osymbol * pformula) list

type pcutdef_schema = {
  ptcds_name  : pqsymbol;
  ptcds_tys   : ptyannot option;
  ptcds_mt    : pmemtype;
  ptcds_mps   : pmpred_args located;
  ptcds_exprs : pexpr list located;
}

(* -------------------------------------------------------------------- *)
type preduction = {
  pbeta    : bool;                      (* β-reduction *)
  pdelta   : pqsymbol list option;      (* definition unfolding *)
  pzeta    : bool;                      (* let-reduction *)
  piota    : bool;                      (* case/if-reduction *)
  peta     : bool;                      (* η-reduction *)
  plogic   : bool;                      (* logical simplification *)
  pmodpath : bool;                      (* modpath normalization *)
  puser    : bool;                      (* user reduction *)
  pcost    : bool;                      (* reduce trivial cost statements *)
}

(* -------------------------------------------------------------------- *)
type 'a doption =
  | Single of 'a
  | Double of ('a * 'a)

(* -------------------------------------------------------------------- *)
type cp_match = [ `If | `While | `Assign | `Sample | `Call ]
type cp_base  = [ `ByPos of int | `ByMatch of int option * cp_match ]

type codepos1 = int * cp_base
type codepos  = (codepos1 * int) list * codepos1

type docodepos1 = codepos1 doption option

(* -------------------------------------------------------------------- *)
type swap_kind =
  | SKbase      of int * int * int
  | SKmove      of int
  | SKmovei     of int * int
  | SKmoveinter of int * int * int

type interleave_info = oside * (int * int) * ((int * int) list) * int

type pipattern =
  | PtAny
  | PtAsgn  of psymbol list
  | PtIf    of pspattern * [`NoElse | `MaybeElse | `Else of pspattern]
  | PtWhile of pspattern

and pspattern = unit

type poracles_cost = (pgamepath * psymbol option * pcost) list

(* For cost judgement with abstract calls.
   ci_oracles : list of pairs of oracles and their costs.
   ci_vrnts   : list of pairs of oracles and their increasing quantity. *)
type p_abs_inv_inf = poracles_cost

type p_call_inv_info = [` Std of pcost | `CostAbs of p_abs_inv_inf ]

type call_info =
  | CI_spec of (pformula * pformula * pcost option)
  | CI_inv of pformula * p_call_inv_info option
  | CI_upto of (pformula * pformula * pformula option)

type p_app_xt_info =
  | PAppNone
  | PAppSingle of pformula
  | PAppCost   of pcost
  | PAppMult   of (pformula option) tuple5

type ('a, 'b, 'c) rnd_tac_info =
  | PNoRndParams
  | PSingleRndParam of 'c
  | PTwoRndParams   of 'a * 'a
  | PMultRndParams  of ('a tuple5) * 'b

type rnd_tac_info_f =
  (pformula, pformula option, pformula) rnd_tac_info

type semrndpos = (bool * codepos1) doption

type tac_dir = Backs | Fwds

type pfel_spec_preds = (pgamepath * pformula) list

(* -------------------------------------------------------------------- *)
type pim_repeat_kind =
  | IM_R_Repeat of int option pair
  | IM_R_May    of int option

type pim_repeat =
  bool * pim_repeat_kind

type anchor =
  | Without_anchor
  | With_anchor

type pim_regexp =
  | IM_Any
  | IM_Parens of pim_regexp
  | IM_Assign
  | IM_Sample
  | IM_Call
  | IM_If     of pim_block option * pim_block option
  | IM_While  of pim_block option
  | IM_Named  of psymbol * pim_regexp option
  | IM_Repeat of pim_repeat * pim_regexp
  | IM_Seq    of pim_regexp list
  | IM_Choice of pim_regexp list

and pim_block = anchor pair * pim_regexp

(* -------------------------------------------------------------------- *)
type trans_kind =
  | TKfun        of pgamepath
  | TKstmt       of side * pstmt
  | TKparsedStmt of side * pim_block * pstmt

type trans_formula =
  | TFform of pformula * pformula * pformula * pformula
  | TFeq

type trans_info =
  trans_kind * trans_formula

(* -------------------------------------------------------------------- *)
type eager_info =
  | LE_done of psymbol
  | LE_todo of psymbol * pstmt * pstmt * pformula * pformula

(* -------------------------------------------------------------------- *)
type bdh_split =
  | BDH_split_bop     of pformula * pformula * pformula option
  | BDH_split_or_case of pformula * pformula * pformula
  | BDH_split_not     of pformula option * pformula

(* -------------------------------------------------------------------- *)
type fun_info = [
  | `Def
  | `Code
  | `Abs  of pformula * p_abs_inv_inf option
  | `Upto of pformula * pformula * pformula option
]

(* -------------------------------------------------------------------- *)
type app_info =
  oside * tac_dir * codepos1 doption * pformula doption * p_app_xt_info

(* -------------------------------------------------------------------- *)
type pcond_info = [
  | `Head   of oside
  | `Seq    of oside * codepos1 option pair * pformula
  | `SeqOne of  side * codepos1 option * pformula * pformula
]

(* -------------------------------------------------------------------- *)
type while_info = {
  wh_inv  : pformula;
  wh_vrnt : pformula option;
  wh_bds  : [`Bd of pformula pair | `Cost of pformula * pcost ] option;
}

(* -------------------------------------------------------------------- *)
type async_while_info = {
  asw_test : (pexpr * pformula) pair;
  asw_pred : pformula * pformula;
  asw_inv  : pformula;
}

(* -------------------------------------------------------------------- *)
type inlineopt = [`UseTuple of bool] option

type inline_info = [
  | `ByName    of oside * inlineopt * (pgamepath list * int list option)
  | `CodePos   of (oside * inlineopt * codepos)
  | `All       of oside * inlineopt
]

(* -------------------------------------------------------------------- *)
type fel_info = {
  pfel_cntr  : pformula;
  pfel_asg   : pformula;
  pfel_q     : pformula;
  pfel_event : pformula;
  pfel_specs : pfel_spec_preds;
  pfel_inv   : pformula option;
}

(* -------------------------------------------------------------------- *)
type deno_ppterm   = (pformula option pair) gppterm
type conseq_info =
  | CQI_bd of phoarecmp option * pformula
  | CQI_c  of pcost

type conseq_ppterm = ((pformula option pair) * (conseq_info) option) gppterm

(* -------------------------------------------------------------------- *)
type sim_info = {
  sim_pos  : codepos1 pair option;
  sim_hint : (pgamepath option pair * pformula) list * pformula option;
  sim_eqs  : pformula option
}

(* -------------------------------------------------------------------- *)
type pcqoption  = [ `Frame ]
type pcqoptions = (bool * pcqoption) list

(* -------------------------------------------------------------------- *)
type crushmode = { cm_simplify : bool; cm_solve : bool; }

(* -------------------------------------------------------------------- *)
type matchmode = [
  | `DSided of [ `Eq | `ConstrSynced ]
  | `SSided of side
]

(* -------------------------------------------------------------------- *)
type phltactic =
  | Pskip
  | Prepl_stmt     of trans_info
  | Pfun           of fun_info
  | Papp           of app_info
  | Pwp            of docodepos1 * pformula option
  | Psp            of docodepos1
  | Pwhile         of (oside * while_info)
  | Pasyncwhile    of async_while_info
  | Pfission       of (oside * codepos * (int * (int * int)))
  | Pfusion        of (oside * codepos * (int * (int * int)))
  | Punroll        of (oside * codepos * bool)
  | Psplitwhile    of (pexpr * oside * codepos)
  | Pcall          of oside * call_info gppterm
  | Prcond         of (oside * bool * codepos1 * pformula option)
  | Prmatch        of (oside * symbol * codepos1)
  | Pcond          of pcond_info
  | Pmatch         of matchmode
  | Pswap          of ((oside * swap_kind) located list)
  | Pcfold         of (oside * codepos * int option)
  | Pinline        of inline_info
  | Pinterleave    of interleave_info located
  | Pkill          of (oside * codepos * int option)
  | Prnd           of oside * semrndpos option * rnd_tac_info_f
  | Prndsem        of oside * codepos1
  | Palias         of (oside * codepos * osymbol_r)
  | Pset           of (oside * codepos * bool * psymbol * pexpr)
  | Pconseq        of (pcqoptions * (conseq_ppterm option tuple3))
  | Pconseqauto    of crushmode
  | Phrex_elim
  | Phrex_intro    of (pformula list * bool)
  | Phecall        of (oside * (pqsymbol * ptyannot option * pformula list))
  | Pexfalso
  | Pbydeno        of ([`PHoare | `Equiv ] * (deno_ppterm * bool * pformula option))
  | PPr            of (pformula * pformula) option
  | Pbyupto
  | Pfel           of (codepos1 * fel_info)
  | Phoare
  | Pprbounded
  | Psim           of crushmode option* sim_info
  | Ptrans_stmt    of trans_info
  | Psymmetry
  | Pbdhoare_split of bdh_split

    (* Eager *)
  | Peager_seq       of (eager_info * codepos1 pair * pformula)
  | Peager_if
  | Peager_while     of (eager_info)
  | Peager_fun_def
  | Peager_fun_abs   of (eager_info * pformula)
  | Peager_call      of (call_info gppterm)
  | Peager           of (eager_info * pformula)

    (* Relation between logic *)
  | Pbd_equiv of (side * pformula * pformula)

    (* Automation *)
  | Pauto
  | Plossless

(* -------------------------------------------------------------------- *)
type include_exclude = [ `Include | `Exclude ]
type pdbmap1 = {
  pht_flag : include_exclude;
  pht_kind : [ `Theory  | `Lemma   ];
  pht_name : pqsymbol;
}

and pdbhint = pdbmap1 list

(* -------------------------------------------------------------------- *)
type pprover_list = {
  pp_use_only : string located list;
  pp_add_rm   : (include_exclude * string located) list;
}

let empty_pprover_list = {
  pp_use_only = [];
  pp_add_rm   = [];
}

type pprover_infos = {
  pprov_max       : int option;
  pprov_timeout   : int option;
  pprov_cpufactor : int option;
  pprov_names     : pprover_list option;
  pprov_quorum    : int option;
  pprov_verbose   : int option option;
  pprov_version   : [`Lazy | `Full] option;
  plem_all        : bool option;
  plem_max        : int option option;
  plem_iterate    : bool option;
  plem_wanted     : pdbhint option;
  plem_unwanted   : pdbhint option;
  plem_dumpin     : string located option;
  plem_selected   : bool option;
  psmt_debug      : bool option;
}

let empty_pprover = {
  pprov_max       = None;
  pprov_timeout   = None;
  pprov_cpufactor = None;
  pprov_names     = None;
  pprov_quorum    = None;
  pprov_verbose   = None;
  pprov_version   = None;
  plem_all        = None;
  plem_max        = None;
  plem_iterate    = None;
  plem_wanted     = None;
  plem_unwanted   = None;
  plem_dumpin     = None;
  plem_selected   = None;
  psmt_debug      = None;
}

(* -------------------------------------------------------------------- *)
type trepeat = [`All | `Maybe] * int option
type tfocus1 = (int option) pair
type tfocus  = (tfocus1 list option) pair

type rwarg = (tfocus located) option * rwarg1 located

and rwarg1 =
  | RWSimpl  of [`Default | `Variant]
  | RWDelta  of (rwoptions * pformula)
  | RWRw     of (rwoptions * (rwside * ppterm) list)
  | RWPr     of (psymbol * pformula option)
  | RWDone   of [`Default | `Variant] option
  | RWSmt    of (bool * pprover_infos)
  | RWApp    of ppterm
  | RWTactic of rwtactic

and rwoptions = rwside * trepeat option * rwocc * pformula option
and rwside    = [`LtoR | `RtoL]
and rwocc     = rwocci option
and rwocci    = [`Inclusive of Sint.t | `Exclusive of Sint.t | `All]
and rwtactic  = [`Ring | `Field]

(* -------------------------------------------------------------------- *)
let norm_rwocci (x : rwocci) =
  match x with
  | `Inclusive x -> Some (`Inclusive, x)
  | `Exclusive x -> Some (`Exclusive, x)
  | `All         -> None

let norm_rwocc (x : rwocc) =
  obind norm_rwocci x

(* -------------------------------------------------------------------- *)
type intropattern1 =
  | IPCore   of ipcore
  | IPDup
  | IPCase     of (icasemode * intropattern list)
  | IPView     of ppterm
  | IPRw       of (rwocc * rwside * (int option) option)
  | IPDelta    of ((rwside * rwocc) * pformula)
  | IPSubst    of (rwside * (int option) option)
  | IPClear    of psymbol list
  | IPDone     of [`Default | `Variant] option
  | IPSmt      of (bool * pprover_infos)
  | IPSubstTop of (int option * [`LtoR | `RtoL] option)
  | IPSimplify of [`Default | `Variant]
  | IPCrush    of crushmode
  | IPBreak

and intropattern = (intropattern1 located) list

and ipcore = [
  | `Revert
  | `Clear
  | `Named     of string
  | `Anonymous of (int option) option
]

and icasemode =
  [`One | `Full of (bool * bool) * bool * icasemode_full option]

and icasemode_full =
  [`AtMost of int | `AsMuch]

type genpattern =
  [ `ProofTerm of ppterm
  | `Form of (rwocc * pformula)
  | `LetIn of psymbol ]

type prevert = {
  pr_clear : psymbol list;
  pr_genp  : genpattern list;
}

type prevertv = {
  pr_rev  : prevert;
  pr_view : ppterm list;
}

let prevert0  = { pr_clear = []; pr_genp = []; }
let prevertv0 = { pr_rev = prevert0; pr_view = []; }

(* -------------------------------------------------------------------- *)
type ppgoption = [
  | `Delta of [`Case | `Split] option
  | `Split
  | `Solve
  | `Subst
  | `Disjunctive
]

type ppgoptions = (bool * ppgoption) list

(* -------------------------------------------------------------------- *)
type pcaseoption  = [ `Ambient ]
type pcaseoptions = (bool * pcaseoption) list

(* -------------------------------------------------------------------- *)
type apply_info = [
  | `ApplyIn of ppterm * psymbol
  | `Apply   of ppterm list * [`Apply|`Exact|`Alpha]
  | `Top     of [`Apply|`Exact|`Alpha]
  | `Alpha   of ppterm
  | `ExactType of pqsymbol
]

(* -------------------------------------------------------------------- *)
type pgenhave = psymbol * intropattern option * psymbol list * pformula

(* -------------------------------------------------------------------- *)
type logtactic =
  | Preflexivity
  | Passumption
  | Psmt        of pprover_infos
  | Psplit
  | Pfield      of psymbol list
  | Pring       of psymbol list
  | Palg_norm
  | Pexists     of ppt_arg located list
  | Pleft
  | Pright
  | Ptrivial
  | Pcongr
  | Pelim       of (prevert * pqsymbol option)
  | Papply      of (apply_info * prevert option)
  | Pcut        of pcut
  | Pcutdef     of (intropattern * pcutdef)
  | Pcutdef_sc  of (intropattern * pcutdef_schema)
  | Pmove       of prevertv
  | Pclear      of psymbol list
  | Prewrite    of (rwarg list * osymbol_r)
  | Prwnormal   of pformula * pqsymbol list
  | Psubst      of pformula list
  | Psimplify   of preduction
  | Pcbv        of preduction
  | Pchange     of pformula
  | Ppose       of (psymbol * ptybinding list * rwocc * pformula)
  | Pgenhave    of pgenhave
  | Pwlog       of (psymbol list * bool * pformula)

(* -------------------------------------------------------------------- *)
and ptactic_core_r =
  | Pidtac      of string option
  | Pdo         of trepeat * ptactic_core
  | Ptry        of ptactic_core
  | Pby         of (ptactics) option
  | Psolve      of (int option * psymbol list option)
  | Por         of ptactic * ptactic
  | Pseq        of ptactics
  | Pcase       of (bool * pcaseoptions * prevertv)
  | Plogic      of logtactic
  | PPhl        of phltactic
  | Pprogress   of ppgoptions * ptactic_core option
  | Psubgoal    of ptactic_chain
  | Pnstrict    of ptactic_core
  | Padmit

(* -------------------------------------------------------------------- *)
and ptactic_core = ptactic_core_r located
and ptactics     = ptactic list

(* -------------------------------------------------------------------- *)
and ptactic = {
  pt_core   : ptactic_core;
  pt_intros : introgenpattern list;
}

(* ---------------------`----------------------------------------------- *)
and introgenpattern = [`Ip of intropattern | `Gen of prevert]

(* -------------------------------------------------------------------- *)
and pexpect  = [
  | `None
  | `Tactic of ptactic
  | `Chain  of ptactic_chain list located
]

(* -------------------------------------------------------------------- *)
and ptactic_chain =
  | Psubtacs  of ptactics
  | Pfsubtacs of (tfocus * ptactic) list * ptactic option
  | Pfirst    of ptactic * int
  | Plast     of ptactic * int
  | Pexpect   of pexpect * int
  | Pfocus    of ptactic * tfocus
  | Protate   of [`Left | `Right] * int

(* -------------------------------------------------------------------- *)
and pcut =
  [`Have | `Suff] * intropattern * pformula * ptactics located option

(* -------------------------------------------------------------------- *)
type paxiom_kind =
| PSchema
| PAxiom of psymbol list
| PLemma of ptactics option option

type mempred_binding = PT_MemPred of psymbol list

type paxiom = {
  pa_name     : psymbol;
  pa_scvars   : pgscbindings option;
  pa_pvars    : mempred_binding option;
  pa_tyvars   : (psymbol * pqsymbol list) list option;
  pa_vars     : pgtybindings option;
  pa_formula  : pformula;
  pa_kind     : paxiom_kind;
  pa_nosmt    : bool;
  pa_locality : locality;
}

(* -------------------------------------------------------------------- *)
type prealize = {
  pr_name  : pqsymbol;
  pr_proof : (ptactics option) option;
}

(* -------------------------------------------------------------------- *)
type ptypeclass = {
  ptc_name : psymbol;
  ptc_inth : pqsymbol option;
  ptc_ops  : (psymbol * pty) list;
  ptc_axs  : (psymbol * pformula) list;
  ptc_loca : is_local;
}

type ptycinstance = {
  pti_name : pqsymbol;
  pti_type : (psymbol * pqsymbol list) list * pty;
  pti_ops  : (psymbol * (pty list * pqsymbol)) list;
  pti_axs  : (psymbol * ptactic_core) list;
  pti_args : [`Ring of (zint option * zint option)] option;
  pti_loca : is_local;
}

(* -------------------------------------------------------------------- *)
type ident_spec = psymbol list

(* -------------------------------------------------------------------- *)
type ('inv, 's) gphelper =
  | Helper_inv   of 'inv
  | Helper_eager of 's

type ('p, 'bad) gpinv =
  | Inv_global of 'p
  | Inv_upto   of 'bad

type pinv = (pformula, (pformula * pformula) * pformula option) gpinv

type equiv_concl =
  | Aequiv_spec of (pformula * pformula) * (pexpr * pexpr) option
  | Aequiv_inv  of pinv

type auto_info = pinv option * ident_spec

type auto_eager = (auto_info, pstmt) gphelper

type equiv = {
  eq_name  : psymbol          ;
  eq_left  : pqsymbol         ;
  eq_right : pqsymbol         ;
  eq_concl : equiv_concl      ;
  eq_auto  : auto_eager option;
}

(* -------------------------------------------------------------------- *)
type cnst_decl = (psymbol list * pty) * pexpr option

(* -------------------------------------------------------------------- *)
type pprint =
  | Pr_any  of pqsymbol
  | Pr_ty   of pqsymbol
  | Pr_op   of pqsymbol
  | Pr_th   of pqsymbol
  | Pr_pr   of pqsymbol
  | Pr_ax   of pqsymbol
  | Pr_sc   of pqsymbol
  | Pr_mod  of pqsymbol
  | Pr_mty  of pqsymbol
  | Pr_glob of pmsymbol located
  | Pr_goal of int
  | Pr_db   of [`Rewrite of pqsymbol | `Solve of psymbol]

(* -------------------------------------------------------------------- *)
type renaming_kind =
  | RNty
  | RNop
  | RNpr

type w3_renaming =
    string list * renaming_kind * string

(* -------------------------------------------------------------------- *)
type theory_cloning = {
  pthc_base   : pqsymbol;
  pthc_name   : osymbol_r;
  pthc_ext    : (pqsymbol * theory_override) list;
  pthc_prf    : theory_cloning_proof list;
  pthc_rnm    : theory_renaming list;
  pthc_opts   : theory_cloning_options;
  pthc_clears : theory_cloning_clear list;
  pthc_local  : is_local;
  pthc_import : [`Export | `Import | `Include] option;
}

and theory_renaming_kind =
  [ `Lemma | `Op | `Pred | `Type | `Module | `ModType | `Theory]

and theory_renaming =
  (theory_renaming_kind list * string located pair)

and theory_cloning_clear =
  ([`Abbrev] * pqsymbol)

and theory_cloning_option =
  [ `Abstract ]

and theory_cloning_options =
  (bool * theory_cloning_option) list

and theory_cloning_proof = {
  pthp_mode   : [
    | `All   of (pqsymbol option * theory_cloning_proof_tag list)
    | `Named of pqsymbol * clmode
  ];
  pthp_tactic : ptactic_core option;
}

and theory_cloning_proof_tag =
  [`Include | `Exclude] * psymbol

and theory_override =
| PTHO_Type   of ty_override
| PTHO_Op     of op_override
| PTHO_Pred   of pr_override
| PTHO_Axiom  of ax_override
| PTHO_Module of me_override
| PTHO_ModTyp of mt_override
| PTHO_Theory of th_override

and ty_override = ty_override_def genoverride * clmode
and op_override = op_override_def genoverride * clmode
and pr_override = pr_override_def genoverride * clmode
and me_override = pqsymbol * clmode
and mt_override = pqsymbol * clmode
and th_override = pqsymbol * clmode
and ax_override = pqsymbol * clmode
and nt_override = EcPath.path * clmode

and clmode = [`Alias | `Inline of [`Keep | `Clear]]

and 'a genoverride = [
| `ByPath   of EcPath.path
| `BySyntax of 'a
]

and ty_override_def = psymbol list * pty

and op_override_def = {
  opov_nosmt  : bool;
  opov_tyvars : psymbol list option;
  opov_args   : ptybinding list;
  opov_retty  : pty;
  opov_body   : pexpr;
}

and pr_override_def = {
  prov_tyvars : psymbol list option;
  prov_args   : ptybinding list;
  prov_body   : pformula;
}

(* -------------------------------------------------------------------- *)
type proofmode = {
  pm_strict : bool;
}

(* -------------------------------------------------------------------- *)
type tcdump = {
  tcd_source : string * (int * int);
  tcd_width  : int option;
  tcd_output : string;
}

(* -------------------------------------------------------------------- *)
type save = [ `Qed | `Admit | `Abort ]

(* -------------------------------------------------------------------- *)
type theory_clear = (pqsymbol option) list

(* -------------------------------------------------------------------- *)
type phint = {
  ht_local : is_local;
  ht_prio  : int;
  ht_base  : psymbol option;
  ht_names : pqsymbol list;
}

(* -------------------------------------------------------------------- *)
type puseroption =
  [`Delta | `EqTrue]

type puserred =
  puseroption list * (pqsymbol list * int option) list

type threquire =
  psymbol option * (psymbol * psymbol option) list * [`Import|`Export] option

(* -------------------------------------------------------------------- *)
type global_action =
  | Gmodule      of pmodule_def_or_decl
  | Ginterface   of pinterface
  | Goperator    of poperator
  | Gprocop      of pprocop
  | Gpredicate   of ppredicate
  | Gnotation    of pnotation
  | Gabbrev      of pabbrev
  | Gaxiom       of paxiom
  | Gtype        of ptydecl list
  | Gtypeclass   of ptypeclass
  | Gtycinstance of ptycinstance
  | Gaddrw       of (is_local * pqsymbol * pqsymbol list)
  | Greduction   of puserred
  | Ghint        of phint
  | Gprint       of pprint
  | Gsearch      of pformula list
  | Glocate      of pqsymbol
  | GthOpen      of (is_local * bool * psymbol)
  | GthClose     of (theory_clear * psymbol)
  | GthClear     of theory_clear
  | GthRequire   of threquire
  | GthImport    of pqsymbol list
  | GthExport    of pqsymbol list
  | GthClone     of theory_cloning
  | GModImport   of pmsymbol located list
  | GsctOpen     of osymbol_r
  | GsctClose    of osymbol_r
  | Grealize     of prealize located
  | Gtactics     of [`Proof of proofmode | `Actual of ptactic list]
  | Gtcdump      of (tcdump * ptactic list)
  | Gprover_info of pprover_infos
  | Gsave        of save located
  | Gpragma      of psymbol
  | Goption      of (psymbol * [`Bool of bool | `Int of int])
  | GdumpWhy3    of string

type global = {
  gl_action : global_action located;
  gl_debug  : [`Timed | `Break] option;
}

type prog_r =
  | P_Prog of global list * bool
  | P_Exit
  | P_Undo of int

type prog = prog_r located

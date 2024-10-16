# args.insert  date.insert  depr.insert  dfns.insert  erro.insert  flow.insert  grad.insert  lego.insert  lngf.insert  main.insert  name.insert  retu.insert  rtfn.insert  tags.insert  vers.insert
DEPR: 
{depr}
.
NAME: uEfn_
{name}
.
MAIN: [u]nivers [E]lectus [f]un[n]ctions - request function catalog 
{main}
.
ARGS:
$1 
CNTLS:
strong:
--_frm - name of frame (main, tag ...)
once:
presentation metods
-_e echo
-_m menu
optional:
--_grp - word for grep
{args}
.
RETU: 
- type (value|bool|stdout|ptr)
-
{retu}
.
ERRO:
- type (return > 0 |& stderr |& exit)
-
{erro}
.
VERS: 
{vers}
.
TAGS: 
{tags}
.
.        CNTLS:
.            required
.            optional -verbose (not garg parsed, for echo main param function) 
.        CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, _mdeb, _list
.                -h : this 
.                _cr_h : . ${PATH_EXL_DIR}/mall/cr_fn_h_file.sh
.                _edit_h : ${_edit_}" "${FN_SAL_DIR}/${FNN}.d.h
.                _tag : cat "${FN_SAL_DIR}/${FNN}.d.h/tags.insert
.                _tag_add : "${FN_SAL_DIR}/${FNN}.d.h/tags.insert
.                _go : ${_edit_} ${FN_DIR}
.                _sal : ${_edit_} ${PATH_SAL_AX_DIR}/$FNN
.                _list : ${_edit_} ${FN_DIR}/${FNN}.list
.            manual 
.                _man : ${_edit_} ${FN_DIR}/${FNN}.man
.                _puml : puml_ ${FN_DIR}/${FNN}.puml -_drawing
.            tst single mane :
.                _tst : . ${FN_DIR}/${FNN}tst/exec.tst
.            deb single mane 
.                _deb : . ${FN_CONT_DIR}/_default/default_deb.sh
.            steps tst single mane :
.                _flw : . ${FN_DIR}/${FNN}tst/_flow_tst.sh
.            menu for deb
.                _mdeb : . ${FN_DEBUG_DIR}/mdeb.sh
.                _mdeb_add : . ${FN_DEBUG_DIR}/mdeb.sh
.            tst all . exec.extst in ${FN_DIR}/${FNN}extst/extst_1
.                _extst : . ${FN_DIR}/${FNN}extst/extst_1/start_exec.tst
.            tst <num> (exec.extst)
.                _extst<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/exec.extst
.            steps extst_1/ex<num>_tst
.                _exdeb<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/_flow_tst.sh
.               
.               _cntl2e cat ${PATH_NID_DIR}/mall/mall.cntl
.
.        CNTL defaut: -_echo, -_debug
.        CNTL develop: -_develop1, ... for special development mode, NOT to product
.
.        DEMANDS for IFS wrp_fn:
.           . dir_${FNN}/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
.           . dir_${FNN}/_gnr_dir_sys.sh create extst in dir_${FNN}
.           . dir_${FNN}/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_${FNN}_mdeb <num>
.           . dir_${FNN}/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_${FNN}_mdeb <num> 
{fn_cntl}
.
_man
_tst
_cr_h
_edit_h
_puml 
_flw 
_extst 
_deb 
_mdeb 
_mdeb_add 
_head 
_lst 
_prp 
_go 
_sal 
_cntl2e
_tag
_tag_add
{all_cntl}
.
.
DATE: 202310291450
{date}
.
DFNS: ${PLT_PATH}/actio/mall
{dfns}
.
GRAD: mall
{grad}
.
FLOW:
{flow}
.
# ln from ${PLT_PATH}/.d/.anc.ax/ifs_fn.d.man/name_fn.d.h/lego.insert
LEGO:
- . ${PLT_PATH}/actio/mall/dir_uEfn_/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
- . ${PLT_PATH}/actio/mall/dir_uEfn_/_gnr_dir_sys.sh create extst in dir_uEfn_
- . ${PLT_PATH}/actio/mall/dir_uEfn_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_$uEfn__mdeb <num>
- . ${PLT_PATH}/actio/mall/dir_uEfn_/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_uEfn__mdeb <num>
{lego}
.
LNGF:
{lngf}
.
RTFN: uEfn_ uEfn_c_ uEfn_g_
{rtfn}
.
EXAM:
{exam}
.
MANF:
{manf}
.

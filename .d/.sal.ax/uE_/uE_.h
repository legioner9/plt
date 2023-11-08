# args.insert  date.insert  depr.insert  dfns.insert  erro.insert  flow.insert  grad.insert  lego.insert  lngf.insert  main.insert  name.insert  retu.insert  rtfn.insert  tags.insert  vers.insert
DEPR: 
{depr}
.
NAME: uE_
{name}
.
MAIN: FonSh fn catalog 
{main}
.
ARGS:
$1= :
DO: stdout all fn standart info (dir_sal, name_fn, main_fn, tags_fn) 
$1=tag :
DO: stdout all unique tag in all tags_fn
CNTLS:
strong:
--_
-_
once(1InAll):
optional:    
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
@catalog
@tag
{tags}
.
.        CNTLS:
.            required
.            optional -verbose (not garg parsed, for echo main param function) 
.        CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, _mdeb, _list
.                -h : this 
.                _cr_h : . ${PATH_EXL_DIR}/mall/cr_fn_h_file.sh
.                   DO: recreate -h 
.                       from :
.                       ${PLT_PATH}/.d/.nid/mall/.tml/h.tml
.                       insert:
.                       ${PLT_PATH}/.d/.nid/mall/.insert/fn_cntl.insert
.                       "${FN_SAL_DIR}/${FNN}.d.h
.                _edit_h : ${_edit_}" "${FN_SAL_DIR}/${FNN}.d.h
.                   DO:
.                _tag : cat "${FN_SAL_DIR}/${FNN}.d.h/tags.insert
.                   DO:
.                _tag_add : "${FN_SAL_DIR}/${FNN}.d.h/tags.insert
.                   DO: exec tag2f_ ${FNN}
.                _go : ${_edit_} ${FN_DIR}
.                   DO:
.                _sal : ${_edit_} ${PATH_SAL_AX_DIR}/$FNN
.                   DO:
.                _list : ${_edit_} ${FN_DIR}/${FNN}.list
.                   DO:
.            manual 
.                _man : ${_edit_} ${FN_DIR}/${FNN}.man
.                   DO:
.                _puml : puml_ ${FN_DIR}/${FNN}.puml -_drawing
.                   DO:
.            tst single mane :
.                _tst : . ${FN_DIR}/${FNN}tst/exec.tst
.                   DO:
.            deb single mane 
.                _deb : . ${FN_CONT_DIR}/_default/default_deb.sh
.                   DO:
.            steps tst single mane :
.                _flw : . ${FN_DIR}/${FNN}tst/_flow_tst.sh
.                   DO:
.            menu for deb
.                _mdeb : . ${FN_DEBUG_DIR}/mdeb.sh
.                   DO:
.                _mdeb_add : . ${FN_DEBUG_DIR}/mdeb.sh
.                   DO:
.            tst all . exec.extst in ${FN_DIR}/${FNN}extst/extst_1
.                _extst : . ${FN_DIR}/${FNN}extst/extst_1/start_exec.tst
.                   DO:
.            tst <num> (exec.extst)
.                _extst<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/exec.extst
.                   DO:
.            steps extst_1/ex<num>_tst
.                _exdeb<num> . ${FN_DIR}/${FNN}extst/extst_1/ex<num>_tst/_flow_tst.sh
.                   DO:
.            inner tst
.                _dis . ${FN_DIR}/.d.ax/.self_tst/dir_1/dis/exec.distst
.                   DO:
.                _dis2 . ${FN_DIR}/.d.ax/.self_tst/dir_1/dis2/exec.distst
.                   DO:
.               
.               _cntl2e cat ${PATH_NID_DIR}/mall/mall.cntl
.                   DO:
.
.       CNTL defaut: -_echo, -_debug
.       CNTL develop: -_develop1, ... for special development mode, NOT to product
.
.       Special args
.           --_obc file.list with args
.           [obc] obiectum      - [аргументы] объект
.
.           fn.sal
.           [sub] subiectum     - [процедура] субъект
.
.           --_aer file.list with env to fn
.           [aer] aer           - [окружение] воздух
.       
.           --_pts file.list with pointers 
.           [pts]               - [pointers]
.
.           --_ppr ponter to result
.           [ppr] productum     - [глобальная ссылка на результат] продукт
.
.           --_sag path to dir with sagitta
.           [sag] sagitta       - [набор файлов] стрела
.
.        DEMANDS for IFS wrp_fn:
.           . dir_${FNN}/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
.               DO:
.           . dir_${FNN}/_gnr_dir_sys.sh create extst in dir_${FNN}
.               DO:
.           . dir_${FNN}/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_${FNN}_mdeb <num>
.               DO:
.           . dir_${FNN}/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_${FNN}_mdeb <num>
.               DO:
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
_edit_mdeb
_head 
_lst 
_prp 
_go 
_sal 
_cntl2e
_tag
_tag_add
_edit_tag
_dis
_dis2
{all_cntl}
.
.
DATE: 202310301512
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
- . ${PLT_PATH}/actio/mall/dir_uE_/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
- . ${PLT_PATH}/actio/mall/dir_uE_/_gnr_dir_sys.sh create extst in dir_uE_
- . ${PLT_PATH}/actio/mall/dir_uE_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_$uE__mdeb <num>
- . ${PLT_PATH}/actio/mall/dir_uE_/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_uE__mdeb <num>
{lego}
.
LNGF:
{lngf}
.
RTFN: uE_ uE_c_ uE_g_
{rtfn}
.
EXAM:
{exam}
.
MANF:
{manf}
.

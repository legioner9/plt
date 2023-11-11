# args.insert  date.insert  depr.insert  dfns.insert  erro.insert  flow.insert  grad.insert  lego.insert  lngf.insert  main.insert  name.insert  retu.insert  rtfn.insert  tags.insert  vers.insert
DEPR: 
{depr}
.
NAME: fol_
{name}
.
MAIN: treat dir with .fol
{main}
.
ARGS:
$1 
CNTLS:
--_ram => ram_ ram name
strong:        
--_sil dir IFS from .sil
--_arb dir implimentation with .ram
optional:
-_mm or --_ram or not (if demand define neme ramus)
--_ram name (without .ext) dir .ram with .fol files
-_mm choice ram_
--_{sub}_{obs} or -_crtag or -_addtag or -_deltag
-_tag echo unique from all tag in arbor
-_addtag to ram_ add tag from unique exist tag
-_crtag to ram_ create new tag and add
-_deltag from ram_
--_{sub}_{obs} (in ram name do {sub} with {obs})
-_E echo main info: 
once(1InAll):
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
DATE: 202311081859
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
- . ${PLT_PATH}/actio/mall/dir_fol_/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
- . ${PLT_PATH}/actio/mall/dir_fol_/_gnr_dir_sys.sh create extst in dir_fol_
- . ${PLT_PATH}/actio/mall/dir_fol_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_$fol__mdeb <num>
- . ${PLT_PATH}/actio/mall/dir_fol_/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_fol__mdeb <num>
{lego}
.
LNGF:
{lngf}
.
RTFN: fol_ fol_c_ fol_g_
{rtfn}
.
EXAM:
{exam}
.
MANF:
{manf}
.
{bags}
.
# check  --_{sub}_{obs} or -_crtag or -_addtag
{todo}
.
MDEB:
# do 1) fol_ -_mm , 2) fol_ --_ram <true_name_ram> , 3) fol_ --_ram <false_name_ram>
fol_ _mdeb 2 
# do fol_ -_tag + -_addtag flow 
fol_ _mdeb 3
# do fol_ -_crtag flow
fol_ _mdeb 4
# do fol_ -_deltag
fol_ _mdeb 5
{mdeb}
.
{utst}
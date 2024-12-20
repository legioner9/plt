# args.insert  date.insert  depr.insert  dfns.insert  erro.insert  flow.insert  grad.insert  lego.insert  lngf.insert  main.insert  name.insert  retu.insert  rtfn.insert  tags.insert  vers.insert
DEPR: 
{depr}
.
NAME: bcp_l2d_
{name}
.
MAIN: dpl or bcp fs_nodes to dir accoding list_file 
{main}
.
ARGS:
.    
CNTLS:
.    [ --_list && --_dlm && --_dir_tar ] && [ -_dpl || -_bcp || -_rst ]
.    --_list file with: full_path_src_file_or_dir@name_tar_file_in_tar_dir
.    --_dlm delimeter in file.lst2
.    --_dir_tar full_path to dir with tar
.    -_dpl or -_bcp or --_rst
.       -_dpl deploy from tar to fs
.       -_bcp bacup to tar from fs
.       -_rst restore: tar -x in full_path_src src_file_or_dir.bcp.tar.gz instead
.    -_soft or -_hard
.      -_dpl -_soft soft: not remove src_node before dpl
.      -_dpl -_hard hard: remove src_node before dpl
.      -_rst -_soft soft: not remove src_node before rst
.      -_rst -_hard hard: remove src_node before rst
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
VERS: 0.0.1
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
{all_cntl}
.
.
DATE: 202310111112
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
- . ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d/.dd/cr_tree_gign_dir.sh - create tree_gign_dir.man with tree
- . ${PLT_PATH}/actio/mall/dir_bcp_l2d_/_gnr_dir_sys.sh create extst in dir_bcp_l2d_
- . ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh start dir_$bcp_l2d__mdeb <num>
- . ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d/.mdeb/.cntl/_cr_ex1_mdeb_postfix.sh create point file fo function dir_bcp_l2d__mdeb <num>
{lego}
.
LNGF: bash
{lngf}
.
RTFN: bcp_l2d_ bcp_l2d_c_ bcp_l2d_g_
{rtfn}
.
EXAM:
.cat ${lst2}
.   #${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.fs/...@${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.arca/...
.   ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.fs/d1@d1
.   ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.fs/f1@f1
local lst2=${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.lst
local fs_dir=${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.fs
local arca_dir=${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.arca
local fargs_file=${PATH_FARGS_DIR}/dpl_l2d_/_mdeb/curr_args.fargs
echo "--_list ${lst2}/bcp_dpl.lst2 --_dir_tar ${arca_dir} --_dlm @ -_bcp -_soft" >"${fargs_file}"
echo -e "${HLIGHT}--- ${_bcp_l2d_} $(cat "${fargs_file}") ---${NORMAL}"
"${_bcp_l2d_}" "$(cat "${fargs_file}")"
{exam}
.
MANF:
{manf}
.

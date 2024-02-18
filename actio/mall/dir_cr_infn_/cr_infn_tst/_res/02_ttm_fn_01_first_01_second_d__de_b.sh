#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_ttm_fn_01_first_01_second_d__de_b() {

echo -e "${CYAN}--- 02_ttm_fn_01_first_01_second_d__de_b() file://${PLT_PATH}/actio/mall/dir_cr_infn_/cr_infn_tst/_de.b/01_first/01_second.d/02_ttm_fn_01_first_01_second_d__de_b.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: ---${NORMAL}"                         #sistem info mesage
# local first_arg=
# first_arg=$1
# if [ -z "${first_arg}" ]; then
#     plt_info "02_ttm_fn_01_first_01_second_d__de_b() : $1 : args NOT_DEFINE : return 1"
#     return 1
# fi
#! -------------- START check env -------------------
if [ -z "${XXX}" ]; then
plt_info "in 02_ttm_fn_01_first_01_second_d__de_b() : NOT_DEFINE : '\${XXX}' : return 1"
return 1
fi
#! -------------- END check env -------------------
#{body}

} 
#!/bin/bash
arb_837687944="${PLT_PATH}"/actio/mall/dir_fol_/.d.ax/.mdeb/.tmp/name_silva.sil/arb
: >"${arb_837687944}"/all_ramus_name.lst
for item_78467468 in $("${_dd2e}" "${arb_837687944}"); do
    echo "$(prs_f -n "${item_78467468}")" >>"${arb_837687944}"/all_ramus_name.lst
done

: >${arb_837687944}/all_unique_tags.lst
for item_83456832 in $(${_f2e} "${arb_837687944}"/all_ramus_name.lst); do

    for item_98789 in $(${_f2e} ${arb_837687944}/${item_83456832}.ram/tags.fol); do
        if ! grep -w ${item_98789} ${arb_837687944}/all_unique_tags.lst &>/dev/null; then
            echo ${item_98789} >>${arb_837687944}/all_unique_tags.lst
        fi
    done

done

#!/bin/bash
#? return 2 => return 0, return 3 => return 1

if [ -d "${sil_}" ]; then
    01_E() {
        echo "start 01_E.sh"

        if [ "${E_:-0}" -eq 1 ]; then
            echo "do E_"
            return 2
        fi
        
    }
fi

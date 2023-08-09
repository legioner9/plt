#!/bin/bash

#! debag
# . "$HOME/.bashrc"
#!

filename="{dir_fns_}/dir_{name_fn_}/{name_fn_}.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

{name_fn_}() {

    #{def_const}

    #{ctrl_args}

    #{init_body}

}

{name_fn_init_}() {

    #{def_const}

    #{ctrl_args}

    #{init_body_init}
}

# {name_fn_} @

unset filename

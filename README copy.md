

# $\mathscr{FonSh\ erit\ crescere\ a\ fons}$

## Dedicata est

    Правильно ли мы пишем функции?
    @tshemsedinov

## Quid enim

FonSh is the system selfgenerated, selftested, selfdocumented, selfcatalogizated wrapper for custom functions

## Regula 
- uses Latin


## Contentus

## Structura

### Bypass protection 

#### FonSh Internal agriments

    - (_)name_node_fs inside FonSh filesystem (same (.) prefix for ls command)
    - (#)string_in_file (not visible for like cat comma)

### Naming

####

- ...(.ax)... mean not delit fs node
- ...(.nsc)... mean not change contane

### plt/.d/.nid



#### cntl strings for nid_API
    plt/.d/.nid/mall/mall.cntl

#### define variables for nid_API
    plt/.d/.nid/mall/mall.const
    
#### fn name environment
    plt/.d/.frc/a.frc 

### dir_<fn_name>
dir for test, use <fn_name> in any flow 
#### dir_<fn_name>/.d.ax
##### dir_<fn_name>/.d.ax/.sal.ax



## Features

### function structure
- fn (main process) is structure of procedures.
  - fefine local variables in main process for procsdure
  - exec procsdure in main process

Explicato:

    $ cat variables_for_procedure.lst
        variable_for_procedure="value_of_variable"

    $ cat procedure.sh
        #!/bin/bash
        echo "${variable_for_procedure}"

    $ cat fn_main_procedure.sh
        ...
        for item in $(cat variables_for_procedure.lst);do
            eval local "${item}"
        done
        if [[ -f "procedure.sh" ]];then
            source procedure.sh
        fi
        ...

    $ source fn_main_procedure.sh
        value_of_variable




### Ligth version

- if you don't use extend args ${_garg2e2_} (convenient but slow process)

in <fn_name>.nsc.sh comment block with ${_garg2e2_}

    $ cat <fn_name>.nsc.sh
        ...
        #! ----- START COMMENT IF NOT USED ${_garg2e2_} -----
        ...
        #! ----- END COMMENT IF NOT USED ${_garg2e2_} -----

### function name injection

- use function name only as variables from .d/.frc/a.frc - option to select version for all PLT

Explicato:

    $ cat edit_vi_.sh
        #!/bin/bash
        edit_vi_(){
          vi $1
        }

    $ cat edit_mc_.sh
        #!/bin/bash
        edit_mc_(){
          mc $1
        }

    $ cat a.frc
        _edit_="edit_mc_"

    $ cat any_fn.sh
        #!/bin/bash
        any_fn(){
          ${_edit_} $1
        }        

    $ ${_edit_} ${path_file}



## Installation



## Usage




### Main Usage function


#### Generate function
    $ ${_gig_mall_} <name_fn>
#### Test function
    $ <name_fn> _tst
#### Help function
    $ <name_fn> -h 

## Contributeb

## Global bag 

- process ${\_gig_mall_} interrapting (plt_exit) - demand Enter - see dir_<fn_name>/<fn_name>_extst/extst_1/start_exec._tst - not insert {path_name} - handle insert full_path_to_that_file
# <infn> <fiches> <solvendum> 

## MAIN
Концепция in_fn (аналог efi самовызывающихся функций) - процедура вызываемая родительским процессом как подпроцесс определенный в файле:

## EXAMP
infn.sh :
```bash
    # do some thing in external env, for examp:
    # define in_fn
    in_fn_this(){
        echo "${var_from_external_env}"
    }
    in_fn_this

```
fn_using_in_fn.sh :
```bash
    # define fn_using_in_fn
    fn_using_in_fn(){
    local var_from_external_env="that: var"
    . infn.sh
    }
```
    $ fn_using_in_fn

    that: var

## VIS
- in_fn_this имеет свое замыкание - можно определять local var
- in_fn_this пользуется замыканием внешней вызывающей ее функции
- in_fn_this хотя и попадает в глобал, но при вызове файла вызывается вариант определенный именно в файле
    

    

[up to README.md](../../../README.md)
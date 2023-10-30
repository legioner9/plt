# $\mathscr{Plt\ erit\ crescere\ a\ fons}$

## Dedicata est

    Правильно ли мы пишем функции?
    @tshemsedinov
{dedicata}
## Quid enim

Selfgenerated, selftested, selfdocumented, selfcatalogizated wrapper for custom functions

### PLT
- adds behaviour to function
- uses Latin
- minoris caelum_plt
  - caelum_plt is interface for plt

## Contentus

{contentus}

## Features

- <name_fn>\_c_ : <name_fn> without API - faster than <name_fn>
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
        
    
      
        

        

    $ ${\_edit_} ${path_file}

{features}

## Installation

{installation}

## Usage

{usage}


### Main Usage function
#### Generate function
    $ ${_gig_mall_} <name_fn>
#### Test function
    $ <name_fn> _tst
#### Help function
    $ <name_fn> -h 

## Contributeb

{contributed}
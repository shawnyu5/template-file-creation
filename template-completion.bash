#/usr/bin/env bash

#_template_completion()
#{
    #COMPREPLY+=($(ls *))
    ##COMPREPLY+=("-compile debug -q")
#}
complete -W "-compile -debug -q" template
#complete -F _template_completion template

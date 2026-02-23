# [emacsdir/mode-samples] sample-zsh

emulate -LR zsh
typeset -gA A; A=(foo bar baz qux)   # associative array
x="a b"
words=(${(z)x})                      # word splitting
joined=${(j:,: )words}               # join array
repeat 1 { : }                       # repeat

return 0 2>/dev/null || exit 0

#!/usr/bin/zsh

emulate -LR zsh
typeset -gA A; A=(foo bar baz qux)
x="a b"

return 0 2>/dev/null || exit 0

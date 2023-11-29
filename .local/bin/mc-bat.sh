#!/bin/bash
# using bat as viewer in mc
# in .bashrc add
# export VIEWER=mc-bat.sh
bat --paging=always --pager="less -R" "$@"

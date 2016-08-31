#!/bin/ksh

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for kshrc_config in ~/.ksh/*[^~] ; do
    source $kshrc_config
done

test -f ~/.kshrc_local && source ~/.kshrc_local

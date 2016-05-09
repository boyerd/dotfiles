#!/bin/bash

for dotFile in bash_alias bash_prompt bashrc gitconfig vimrc xinitrc Xmodmap Xresources; do
    echo "Checking $dotFile"
    if [ -f ${PWD}/${dotFile} ]; then
        if [ ! -f ~/.${dotFile} ]; then
            echo ".$dotFile not found, creating ~/.${dotFile} symlink"
            ln -s ${PWD}/${dotFile} ~/.${dotFile}
        fi
    fi
done

for dotFile in git-completion.bash git-prompt.sh; do
    echo "Checking git-contrib/$dotFile"
    if [ -f ${PWD}/git-contrib/${dotFile} ]; then
        if [ ! -f ~/.${dotFile} ]; then
            echo ".$dotFile not found, creating ~/.${dotFile} symlink"
            ln -s ${PWD}/git-contrib/${dotFile} ~/.${dotFile}
        fi
    fi
done

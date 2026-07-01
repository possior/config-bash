[日本語](#技術文書)｜[English](#technical-document)｜[`bash.sh`](../src/bash.sh)

# 技術文書

## 目次

- [基本構造](#基本構造)

## 基本構造

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "

export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12

alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```

# Technical Document

## Table of Contents

- [Basic Structure](#basic-structure)

## Basic Structure

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "

export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12

alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```
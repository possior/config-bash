[日本語](#技術文書)｜[English](#technical-document)｜[`bash.sh`](../src/bash.sh)

# 技術文書

## 目次

- [基本構造](#基本構造)
- [プロンプト文字列の設定](#プロンプト文字列の設定)
- [環境変数の設定](#環境変数の設定)
- [アライアスの設定](#アライアスの設定)

## 基本構造

プロンプト文字列の設定。

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

環境変数の設定。

``` bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

アライアスの設定。

``` bash
alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```

## プロンプト文字列の設定

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

## 環境変数の設定

``` bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

## アライアスの設定

``` bash
alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```

# Technical Document

## Table of Contents

- [Basic Structure](#basic-structure)
- [Configuration of Prompt Strings](#configuration-of-prompt-strings)
- [Configuration of Environmental Variables](#configuration-of-environmental-variables)
- [Configuration of Aliases](#configuration-of-aliases)

## Basic Structure

Configuration of prompt strings (PS).

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

Configuration of environmental variables.

``` bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

Configuration of aliases.

``` bash
alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```

## Configuration of Prompt Strings

``` bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

## Configuration of Environmental Variables

``` bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

## Configuration of Aliases

``` bash
alias grep='grep --color=auto'
alias ls='ls -A --color=auto'
alias yay='yay --builddir=/var/tmp --color=auto'
alias yay!='yay --sudoloop --builddir=/var/tmp --color=auto --overwrite="*"'
```
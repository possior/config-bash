[日本語](#技術文書)｜[English](#technical-document)｜[`bash.sh`](../src/bash.sh)

# 技術文書

## 目次

- [基本構造](#基本構造)
- [プロンプト文字列の設定](#プロンプト文字列の設定)
- [環境変数の設定](#環境変数の設定)
- [アライアスの設定](#アライアスの設定)

## 基本構造

プロンプト文字列の設定。

```bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

環境変数の設定。

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

アライアスの設定。

```bash
alias 'grep'='grep --color=auto'
alias 'ls'='ls -A --color=auto'
alias 'yay'='yay --builddir=/var/tmp --color=auto'
alias 'yay!'='yay --sudoloop --overwrite="*"'
```

## プロンプト文字列の設定

```bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

各命令文とその出力の間に表示する文字列を設定する。

```bash
PS0=""
```

各命令文の前に表示する文字列を設定する。`\n`は改行、`\u`はユーザー名、`\h`はコンピュータ名、`\w`は作業ディレクトリを指す。

```bash
PS1="\n[\u@\h] \w\n$ "
```

命令文が複数行に渡る場合などに表示する文字列を設定する。

```bash
PS2="> "
```

メニュー操作時に表示する文字列を設定する。

```bash
PS3=": "
```

デバック時に表示する文字列を設定する。

```bash
PS4="+ "
```

## 環境変数の設定

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

バッシュで実行した命令文の履歴を保存するファイルの位置を設定する。

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
```

## アライアスの設定

```bash
alias 'grep'='grep --color=auto'
alias 'ls'='ls -A --color=auto'
alias 'yay'='yay --builddir=/var/tmp --color=auto'
alias 'yay!'='yay --sudoloop --overwrite="*"'
```

# Technical Document

## Table of Contents

- [Basic Structure](#basic-structure)
- [Configuration of Prompt Strings](#configuration-of-prompt-strings)
- [Configuration of Environmental Variables](#configuration-of-environmental-variables)
- [Configuration of Aliases](#configuration-of-aliases)

## Basic Structure

Configuration of prompt strings (PS).

```bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

Configuration of environmental variables.

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

Configuration of aliases.

```bash
alias 'grep'='grep --color=auto'
alias 'ls'='ls -A --color=auto'
alias 'yay'='yay --builddir=/var/tmp --color=auto'
alias 'yay!'='yay --sudoloop --overwrite="*"'
```

## Configuration of Prompt Strings

```bash
PS0=""
PS1="\n[\u@\h] \w\n$ "
PS2="> "
PS3=": "
PS4="+ "
```

Configure the string to display after each command and before its output.

```bash
PS0=""
```

Configure the string to display before each command. `\n` means a line break, `\u` username, `\h` computer name, and `\w` working directory.

```bash
PS1="\n[\u@\h] \w\n$ "
```

Configure the string to display for a multi-line command for example.

```bash
PS2="> "
```

Configure the string to display for interacting with a menu.

```bash
PS3=": "
```

Configure the string to display for debugging.

```bash
PS4="+ "
```

## Configuration of Environmental Variables

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
export HISTFILESIZE=12
export HISTSIZE=12
```

Configure the path to the file that saves the history of Bash commands executed.

```bash
export HISTFILE=${HOME}/.config/bash/history.sh
```

## Configuration of Aliases

```bash
alias 'grep'='grep --color=auto'
alias 'ls'='ls -A --color=auto'
alias 'yay'='yay --builddir=/var/tmp --color=auto'
alias 'yay!'='yay --sudoloop --overwrite="*"'
```
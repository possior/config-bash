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
export "GTK_IM_MODULE"="fcitx"
export "HISTFILE"="$HOME/.config/bash/history.sh"
export "HISTFILESIZE"="12"
export "HISTSIZE"="12"
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
export "JULIA_EDITOR"="vim"
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
export "QT_IM_MODULE"="fcitx"
export "XMODIFIERS"="@im=fcitx"
```

アライアスの設定。

```bash
alias "grep"="grep --color=auto"
alias "ls"="ls -A --color=auto"
alias "yay"="yay --builddir=/var/tmp --color=auto"
alias "yay!"="yay --sudoloop --overwrite=\"*\""
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
export "GTK_IM_MODULE"="fcitx"
export "HISTFILE"="$HOME/.config/bash/history.sh"
export "HISTFILESIZE"="12"
export "HISTSIZE"="12"
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
export "JULIA_EDITOR"="vim"
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
export "QT_IM_MODULE"="fcitx"
export "XMODIFIERS"="@im=fcitx"
```

GTKにおいてFcitxによる多言語入力を有効化する。

```bash
export "GTK_IM_MODULE"="fcitx"
```

バッシュの履歴ファイルのパスを設定する。

```bash
export "HISTFILE"="$HOME/.config/bash/history.sh"
```

バッシュの履歴ファイルに保存する命令文の数を設定する。

```bash
export "HISTFILESIZE"="12"
```

バッシュの履歴に保存する命令文の数を設定する。

```bash
export "HISTSIZE"="12"
```

ジュリアのデポットのパスを設定する。

- [Environment Variables｜`JULIA_DEPOT_PATH`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_DEPOT_PATH)（外部リンク）

```bash
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
```

ジュリアの履歴ファイルのパスを設定する。

- [Environment Variables｜`JULIA_HISTORY`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_HISTORY)（外部リンク）

```bash
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
```

ジュリアで使用する編集器を設定する。

- [Environment Variables｜`JULIA_EDITOR`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_EDITOR)（外部リンク）

```bash
export "JULIA_EDITOR"="vim"
```

ジュリアアップのデポットのパスを設定する。

- [Custom location for julia, using juliaup](https://discourse.julialang.org/t/custom-location-for-julia-using-juliaup/114724)（外部リンク）

```bash
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
```

QtにおいてFcitxによる多言語入力を有効化する。

```bash
export "QT_IM_MODULE"="fcitx"
```

XウィンドウシステムにおいてFcitxによる多言語入力を有効化する。

```bash
export "XMODIFIERS"="@im=fcitx"
```

## アライアスの設定

```bash
alias "grep"="grep --color=auto"
alias "ls"="ls -A --color=auto"
alias "yay"="yay --builddir=/var/tmp --color=auto"
alias "yay!"="yay --sudoloop --overwrite=\"*\""
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
export "GTK_IM_MODULE"="fcitx"
export "HISTFILE"="$HOME/.config/bash/history.sh"
export "HISTFILESIZE"="12"
export "HISTSIZE"="12"
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
export "JULIA_EDITOR"="vim"
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
export "QT_IM_MODULE"="fcitx"
export "XMODIFIERS"="@im=fcitx"
```

Configuration of aliases.

```bash
alias "grep"="grep --color=auto"
alias "ls"="ls -A --color=auto"
alias "yay"="yay --builddir=/var/tmp --color=auto"
alias "yay!"="yay --sudoloop --overwrite=\"*\""
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
export "GTK_IM_MODULE"="fcitx"
export "HISTFILE"="$HOME/.config/bash/history.sh"
export "HISTFILESIZE"="12"
export "HISTSIZE"="12"
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
export "JULIA_EDITOR"="vim"
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
export "QT_IM_MODULE"="fcitx"
export "XMODIFIERS"="@im=fcitx"
```

Enable the Fcitx multilingual input on GTK.

```bash
export "GTK_IM_MODULE"="fcitx"
```

Configure the path to the history file of Bash.

```bash
export "HISTFILE"="$HOME/.config/bash/history.sh"
```

Configure the number of commands saved in the history file of Bash.

```bash
export "HISTFILESIZE"="12"
```

Configure the number of commands saved in the history of Bash.

```bash
export "HISTSIZE"="12"
```

Configure the path to the depot of Julia.

- [Environment Variables | `JULIA_DEPOT_PATH`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_DEPOT_PATH) (external link)

```bash
export "JULIA_DEPOT_PATH"="$HOME/.config/julia"
```

Configure the path to the history file of Julia.

- [Environment Variables | `JULIA_HISTORY`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_HISTORY) (external link)

```bash
export "JULIA_HISTORY"="$JULIA_DEPOT_PATH/logs/REPLHistory.jl"
```

Configure the editor used in Julia.

- [Environment Variables | `JULIA_EDITOR`](https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_EDITOR) (external link)

```bash
export "JULIA_EDITOR"="vim"
```

Configure the path to the depot of Juliaup.

- [Custom location for julia, using juliaup](https://discourse.julialang.org/t/custom-location-for-julia-using-juliaup/114724) (external link)

```bash
export "JULIAUP_DEPOT_PATH"="$HOME/.config"
```

Enable the Fcitx multilingual input on Qt.

```bash
export "QT_IM_MODULE"="fcitx"
```

Enable the Fcitx multilingual input on X Window System.

```bash
export "XMODIFIERS"="@im=fcitx"
```

## Configuration of Aliases

```bash
alias "grep"="grep --color=auto"
alias "ls"="ls -A --color=auto"
alias "yay"="yay --builddir=/var/tmp --color=auto"
alias "yay!"="yay --sudoloop --overwrite=\"*\""
```
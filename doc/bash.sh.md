[日本語](#bash説明書)｜[English](#bash-document)｜[`bash.sh`](../src/bash.sh)

# Bash説明書

設定ディレクトリ（`$HOME/.config/bash/src`）を変数におく。

```Bash
src="$HOME/.config/bas/src"
```

変数に係る設定である。本レポジトリでは`variables.sh`設定ファイルに格納している。以下のBashスクリプトは、`variables.sh`設定ファイルが存在することを確認した後に、それをセッションに読み込む。

```Bash
[[ -f "$src/variables.sh" ]] && source "$src/variables.sh"
```

Vimの変数に係る設定である。本レポジトリでは`variables.vim.sh`設定ファイルに格納している。以下のBashスクリプトは、`variables.vim.sh`設定ファイルが存在することを確認した後に、それをセッションに読み込む。

```Bash
[[ -f "$src/variables.vim.sh" ]] && source "$src/variables.vim.sh"
```

# Bash Document

Set the configuration directory (`$HOME/.config/bash/src`) as a variable.

```Bash
src="$HOME/.config/bas/src"
```

This is the configuration on variables. In this repository, the `variables.sh` configuration file contains that configuration. The Bash script below loads the `variables.sh` configuration file into the session after checking if it exists.

```Bash
[[ -f "$src/variables.sh" ]] && source "$src/variables.sh"
```

This is the configuration on Vim's variables. In this repository, the `variables.vim.sh` configuration file contains that configuration. The Bash script below loads the `variables.vim.sh` configuration file into the session after checking if it exists.

```Bash
[[ -f "$src/variables.vim.sh" ]] && source "$src/variables.vim.sh"
```

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
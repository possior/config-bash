[日本語](#bash説明書)｜[English](#bash-document)｜[`bash.sh`](../src/bash.sh)

# Bash説明書

Vimの変数に係る設定である。本レポジトリでは`variables.vim.sh`設定ファイルに格納している。以下のBashスクリプトは、`variables.vim.sh`設定ファイルが存在することを確認した後に、それをセッションに読み込む。

```Bash
[[ -f variables.vim.sh ]] && source variables.vim.sh
```

# Bash Document

This is the configuration on Vim's variables. In this repository, the `variables.vim.sh` configuration file contains that configuration. The Bash script below loads the `variables.vim.sh` configuration file into the session after checking if it exists.

```Bash
[[ -f variables.vim.sh ]] && source variables.vim.sh
```

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
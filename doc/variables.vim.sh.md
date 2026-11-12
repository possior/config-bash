[日本語](#bash説明書)｜[English](#bash-document)｜[`variables.vim.sh`](../src/variables.vim.sh)

# Bash説明書

以下のBashスクリプトは、Vimの標準設定ファイルを格納する`MYVIMRC`環境変数を設定する。

```Bash
export MYVIMRC="$HOME/.config/vim/vim.vim"
```

以下のBashスクリプトは、Vimが起動時に実行する命令を格納する`VIMINIT`環境変数を設定する。

```Bash
export VIMINIT="source $MYVIMRC"
```

# Bash Document

The Bash script below configures the `MYVIMRC` environment variable that stores the Vim's default configuration file.

```Bash
export MYVIMRC="$HOME/.config/vim/vim.vim"
```

The Bash script below configures the `VIMINIT` environment variable that stores the command executed when Vim launches.

```Bash
export VIMINIT="source $MYVIMRC"
```

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
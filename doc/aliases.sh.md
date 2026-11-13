[日本語](#bash説明書)｜[English](#bash-document)｜[`aliases.sh`](../src/aliases.sh)

# Bash説明書

以下のBashスクリプトは、`grep`命令を`grep --color=auto`命令に上書きする。ハイライトを自動で行う。

```Bash
alias grep='grep --color=auto'
```

以下のBashスクリプトは、`ls`命令を`ls -A --color=auto`命令に上書きする。ハイライトを自動で行う。

```Bash
alias ls='ls -A --color=auto'
```

以下のBashスクリプトは、`omegat`命令を`omegat --config-dir="$HOME/.config/omegat"`命令に上書きする。設定ディレクトリを`$HOME/.config/omegat`に定める。

```Bash
alias omegat='omegat --config-dir="$HOME/.config/omegat"'
```

以下のBashスクリプトは、`yay`命令を`yay --builddir=/var/tmp --color=auto`命令に上書きする。ビルドを`/var/tmp`ディレクトリで行う。ハイライトを自動で行う。

```Bash
alias yay='yay --builddir=/var/tmp --color=auto'
```

以下のBashスクリプトは、`yay --sudoloop --overwrite=*`命令の通称として`yay!`を定める。`sudo`がタイムアウトしなくなる。干渉しているファイルを上書きする。

```Bash
alias yay!='yay --sudoloop --overwrite=*'
```

# Bash Document

The Bash script below overwrites the `grep` command with the command `grep --color=auto`. Automatic highlighting.

```Bash
alias grep='grep --color=auto'
```

The Bash script below overwrites the `ls` command with the command `ls -A --color=auto`. Automatic highlighting.

```Bash
alias ls='ls -A --color=auto'
```

The Bash script below overwrites the `omegat` command with the command `omegat --config-dir="$HOME/.config/omegat"`. It defines `$HOME/.config/omegat` as the configuration directory.

```Bash
alias omegat='omegat --config-dir="$HOME/.config/omegat"'
```

The Bash script below overwrites the `yay` command with the command `yay --builddir=/var/tmp --color=auto`. It builds at the directory `/var/tmp`. Automatic highlighting.

```Bash
alias yay='yay --builddir=/var/tmp --color=auto'
```

The Bash script below sets the alias `yay!` to the command `yay --sudoloop --overwrite=*`. It prevents `sudo`'s timeout. It overwrites conflicting files.

```Bash
alias yay!='yay --sudoloop --overwrite=*'
```

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
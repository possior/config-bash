[日本語](#Bash設定)｜[English](#bash-configuration)

# Bash設定

## 目次

- [導入](#導入)
- [Bash説明書](#bash説明書)
- [版本一覧](#版本一覧)
- [利用許諾](#利用許諾)

## 導入

本リポジトリを`$HOME/.config/bash`ディレクトリに複製する。`default`は希望するブランチ名やタグ名に置き換えること。

```Bash
git clone -vb default https://github.com/possior/config-bash.git "$HOME/.config/bash"
```

複製したリポジトリを更新する。`default`は希望するブランチ名やタグ名に置き換えること。

```Bash
cd "$HOME/.config/bash"; git pull origin default
```

一部の設定は`installer.sh`スクリプトを実行して適切な位置に導入する必要がある。設定ファイルを上書き保存する場合は`-o`または`--overwrite`を、しない場合は`-p`または`--preserve`を指定すること。

```Bash
cd "$HOME/.config/bash"; chmod +x installer.sh; ./installer.sh
```

## Bash説明書

| 対象ファイル | 概要 |
| :---  | :---  |
| [`.bash_profile`](./doc/.bash_profile.md) | Bashの標準設定ファイル。 |
| [`.bashrc`](./doc/.bashrc.md) | Bashの標準設定ファイル。 |
| [`bash.sh`](./doc/bash.sh.md) | 各設定ファイルを参照してその設定を読み込む設定。 |
| [`variables.sh`](./doc/variables.sh.md) | 変数に係る設定。 |
| [`variables.vim.sh`](./doc/variables.vim.sh.md) | Vimの変数に係る設定。 |

## 版本一覧

| 版本号 | 統一資源位置指定子 |
| :---: | :---  |
| `01.03` | [リポジトリ](https://github.com/possior/config-bash/tree/ver.01.03.02/)、[リリース](https://github.com/possior/config-bash/releases/tag/ver.01.03.02/) |
| `01.02` | [リポジトリ](https://github.com/possior/config-bash/tree/ver.01.02.03/)、[リリース](https://github.com/possior/config-bash/releases/tag/ver.01.02.03/) |
| `01.01` | [リポジトリ](https://github.com/possior/config-bash/tree/ver.01.01.11/)、[リリース](https://github.com/possior/config-bash/releases/tag/ver.01.01.11/) |

## 利用許諾

[CC0 1.0 Universal](./license.txt)。全権留保せず。自己責任で使用せよ、保証なし。

# Bash Configuration

## Table of Contents

- [Installation](#installation)
- [Bash Documents](#bash-documents)
- [Version List](#version-list)
- [License](#license)

## Installation

Clone this repository at the directory `$HOME/.config/bash`. Replace `default` with a branch or tag name you desire.

```Bash
git clone -vb default https://github.com/possior/config-bash.git "$HOME/.config/bash"
```

Update the cloned repository. Replace `default` with a branch or tag name you desire.

```Bash
cd "$HOME/.config/bash"; git pull origin default
```

Some configuration require execution of the `installer.sh` script to install them at an appropriate location. Specify `-o` or `--overwrite` when overwriting the configuration files or `-p` or `--preserve` when not. This script overwrites them by default.

```Bash
cd "$HOME/.config/bash"; chmod +x installer.sh; ./installer.sh
```

## Bash Documents

| Target File | Description |
| :---  | :---  |
| [`.bash_profile`](./doc/.bash_profile.md) | Bash's default configuration file. |
| [`.bashrc`](./doc/.bashrc.md) | Bash's default configuration file. |
| [`bash.sh`](./doc/bash.sh.md) | Configuration that references each configuration file and loads its configuration. |
| [`variables.sh`](./doc/variables.sh.md) | Configuration on variables. |
| [`variables.vim.sh`](./doc/variables.vim.sh.md) | Configuration on Vim variables. |

## Version List

| Version Number | Uniform Resource Locator |
| :---: | :---  |
| `01.03` | [repository](https://github.com/possior/config-bash/tree/ver.01.03.02/), [release](https://github.com/possior/config-bash/releases/tag/ver.01.03.02/) |
| `01.02` | [repository](https://github.com/possior/config-bash/tree/ver.01.02.03/), [release](https://github.com/possior/config-bash/releases/tag/ver.01.02.03/) |
| `01.01` | [repository](https://github.com/possior/config-bash/tree/ver.01.01.11/), [release](https://github.com/possior/config-bash/releases/tag/ver.01.01.11/) |

## License

[CC0 1.0 Universal](./license.txt). No rights reserved. Use at your own risk, no warranty.

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
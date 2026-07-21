[日本語](#Bashの設定)｜[English](#bash-configuration)

# Bashの設定

## 目次

- [利用許諾（CC0、0BSD）](./license.md)
- [バージョン情報](./version.md)
- [Bashの設定を適用](#bashの設定を適用)
- 技術文書
  - [`.bash_profile`](./doc/.bash_profile.md)

## Bashの設定を適用

最新版の設定を適用するためには以下の命令文を実行すること。以下のフラッグやオプションをその命令文に続けて付すことで、挙動を調整することができる。

- `-o`, `--overwrite`：設定ファイルが既に存在する場合は上書きする。
- `-p`, `--preserve`：設定ファイルが既に存在する場合は上書きしない。

```bash
curl -fsSL https://raw.githubusercontent.com/possior/config-bash/default/install.sh | bash -s -- 
```

# Bash Configuration

## Table of Contents

- [License (CC0, 0BSD)](./license.md)
- [Version Information](./version.md)
- [Applying Bash Configuration](#applying-bash-configuration)
- Technical Documents
  - [`.bash_profile`](./doc/.bash_profile.md)

## Applying Bash Configuration

To apply the latest configuration, execute the following command. You can modify the behavior by adding the following flags and options after the command.

- `-o`, `--overwrite`: overwrite if configuration files already exist.
- `-p`, `--preserve`: don't overwrite if configuration files already exist.

```bash
curl -fsSL https://raw.githubusercontent.com/possior/config-bash/default/install.sh | bash -s -- 
```
[日本語](#bash説明書)｜[English](#bash-document)｜[`prompts.sh`](../src/prompts.sh)

# Bash説明書

以下のBashスクリプトは、命令を入力してから実行する直前までにBashが表示する文字列を設定する。

```Bash
PS0=""
```

以下のBashスクリプトは、次の命令を待機している時にBashが表示する文字列を設定する。

```Bash
PS1="\n[\u@\h] \w\n$ "
```

以下のBashスクリプトは、命令の続きを待機している時にBashが表示する文字列を設定する。

```Bash
PS2="> "
```

以下のBashスクリプトは、ユーザの選択を待機している時にBashが表示する文字列を設定する。

```Bash
PS3=": "
```

以下のBashスクリプトは、デバック中にBashが表示する文字列を設定する。

```Bash
PS4="+ "
```

# Bash Document

The Bash script below configures the string Bash displays after you input a command and before you execute it.

```Bash
PS0=""
```

The Bash script below configures the string Bash displays when waiting for the next command.

```Bash
PS1="\n[\u@\h] \w\n$ "
```

The Bash script below configures the string Bash displays when waiting for the rest of the command.

```Bash
PS2="> "
```

The Bash script below configures the string Bash displays when waiting for user's selection.

```Bash
PS3=": "
```

The Bash script below configures the string Bash displays during debug.

```Bash
PS4="+ "
```

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
[日本語](#Bashの設定)｜[English](#bash-configuration)

# Bashの設定

## 目次

- [利用許諾（CC0、0BSD）](./license.md)
- [バージョン情報](./version.md)
- [Bashをインストール](#bashをインストール)

## Bashをインストール

# Bash Configuration

## Table of Contents

- [License (CC0, 0BSD)](./license.md)
- [Version Information](./version.md)
- [Installing Bash](#installing-bash)

## Installing Bash

## How to Duplicate

If you would like to quickly duplicate my configuration, execute the one-line command below.

``` bash
here="$(pwd)"; path="$(mktemp -d)/config-bash"; git clone "https://github.com/possior/config-bash" "$path"; cd "$path"; bash "installer.sh"; cd "$here"; rm -rf "$path"
``` 

Clone this project at your desired path (`$path`). Ensure that the path (`$path`) is empty and ready for cloning a GitHub repository.

``` bash
git clone "https://github.com/possior/config-bash.git" "$path"
```

Change the working directory to the repository. This is crucial, because the installer only functions inside the repository.

``` bash
cd "$path"
```

Specify the specific version (`$version`) you would like to install, or skip this step to install the default configuration.

``` bash
git checkout $version
``` 

Execute the installer, and follow its instruction.

``` bash
bash "installer.sh"
``` 

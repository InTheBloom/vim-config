# vimセットアップツール

## これは何か
私が現在つかっているvimの設定をまとめて、いろいろなところで使えるようにまとめたものです。
また、windowsとlinux向けに一発で初期設定を終わらせるスクリプトを入れておきました。
linux環境ではbashを、windows環境ではpowershellを想定しています。

## 特徴
- プラグインマネージャーに[jetpack-vim](https://github.com/tani/vim-jetpack)を使用。面倒くさいプラグイン関連の処理は全部丸投げしてます。
- vimscriptが多少読める人なら色々カスタマイズする土台にいいかも(？)
- なるたけプラットフォーム依存しないように気をつけました。(gitは使ってないはずなので、curlさえ使えればフルインストール可能です。)

## 使い方
setupディレクトリにあるスクリプトを実行してください。linuxなら`Linux.sh`、windowsなら`Windows.ps1`です。

## 注意点
- 自己責任で使用してください。
- 完全に私用のチューニングなので、意味わからない設定とかがあるかもしれないです。
- スクリプトはカレントディレクトリをスクリプトのあるディレクトリに移してから実行してください。(相対パスを利用しているからです。)
- ~がホームディレクトリだという前提でスクリプトを組んでいます。

---

# vim setup tool(by google translate)

## what is this
This is a summary of the vim settings that I am currently using so that they can be used in various places. I also included a script to complete the initial settings in one shot for windows and linux. It assumes bash in the linux environment and powershell in the windows environment.

## feature
- Use jetpack-vim as plugin manager. All troublesome plug-in related processing is thrown away.
- If you can read vimscript a little, it may be a good base for customizing various things (?)
- I tried to be as platform independent as possible. (Since git should not be used, full installation is possible as long as you can use curl.)

## Usage
Execute the script in the setup directory. `Linux.sh` for linux, `Windows.ps1` for windows.

## important point
- Please use at your own risk.
- This is a completely private tuning, so there may be settings that don't make sense.
- Execute the script after moving the current directory to the directory where the script is located. (Because you are using a relative path.)
- The script is built on the assumption that ~ is the home directory.

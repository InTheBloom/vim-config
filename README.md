# vimセットアップツール

## これは何か
私が現在つかっているvimの設定をまとめて、いろいろなところで使えるようにまとめたものです。
また、windowsとlinux向けに一発で初期設定を終わらせるスクリプトを入れておきました。
linux環境ではbashを、windows環境ではpowershellを想定しています。

## 特徴
- プラグインマネージャーに[vim-plug](https://github.com/junegunn/vim-plug)を使用。面倒くさいプラグイン関連の処理は全部丸投げしてます。
- vimscriptが多少読める人なら色々カスタマイズする土台にいいかも(？)
- ~~なるたけプラットフォーム依存しないように気をつけました。(gitは使ってないはずなので、curlさえ使えればフルインストール可能です。)~~windows環境で謎のエラーが出てしまったのでgitを使っています。多分

## 使い方
setupディレクトリにあるスクリプトを実行してください。linuxなら`Linux.sh`、windowsなら`Windows.ps1`です。

## 注意点
- 自己責任で使用してください。
- 完全に私用のチューニングなので、意味わからない設定とかがあるかもしれないです。
- スクリプトはカレントディレクトリをスクリプトのあるディレクトリに移してから実行してください。(相対パスを利用しているからです。)
- ~がホームディレクトリだという前提でスクリプトを組んでいます。

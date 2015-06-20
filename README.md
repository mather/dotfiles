dotfiles
========

ドットファイル置き場

### dotfilesのインストール

[homesick](https://github.com/technicalpickles/homesick)のインストール

    $ gem install homesick

リポジトリをclone

    $ homesick clone https://github.com/technicalpickles/homesick

### Homebrew

- [Homebrew](http://brew.sh/index_ja.html)
- [Homebrew-bundle](https://github.com/Homebrew/homebrew-bundle)

    $ brew tap Homebrew/bundle
    $ brew bundle

### Emacs

Emacs本体はHomebrewでインストールされる

ライブラリは[Cask](https://cask.readthedocs.org/)でインストール

    $ cd ~/.emacs.d/
    $ cask install

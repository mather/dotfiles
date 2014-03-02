dotfiles
========

ドットファイル置き場

```
$ mkdir -p ~/.dotfiles
$ git clone https://github.com/mather/dotfiles.git ~/.dotfiles
```

Emacs
-----

### インストール

#### Debian

```
$ sudo aptitude install emacs
```

#### Mac OS X

```
$ brew install emacs --cocoa
```

`.bashrc` や `.zshrc` に以下を記述

```
alias emacs="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs"
```

### 設定ファイル設置

リンク作成

```
$ ln -s ~/.dotfiles/.emacs.d ~/.emacs.d
```

パッケージインストーラなどを整理

```
$ cd ~/.dotfiles/.emacs.d/elisp/
$ wget https://raw.github.com/emacs-jp/init-loader/master/init-loader.el -O init-loader.el
$ wget http://www.emacswiki.org/emacs/download/auto-install.el -O auto-install.el
```

### インストーラでインストール

- `M-x auto-install-update-emacswiki-package-name` : EmacsWikiからパッケージ一覧を取得
- 参考 : http://qiita.com/ongaeshi/items/e81fca7a9797fe203e9f

Vim, MacVim
-----------

```
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gvimrc ~/.gvimrc
```

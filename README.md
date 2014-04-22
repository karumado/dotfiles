#自分用ドットファイル
  開発環境を簡単に構築するための部品類

  * AppStoreからXcodeをダウンロード＆インストール
  * ターミナルから"xcode-select --install"を実行
## HomeBrewのインストール (http://brew.sh)
  * ターミナルで下記を実行
  * ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  * brew doctor
## dotfilesのダウンロード
  *  git clone git@github.com:karumado/dotfiles.git
## bundleで一括インストール
  * たまにパスワード聞いてくるので様子を見ておく
  * brew bundle
## 各種ファイルのシンボリックリンクを作成する。
  * ~dotfaile/dotfilesLink.sh
## zshの設定
  * sudo vi /etc/shells
  * /usr/local/bin/zsh パスを追記
  * chpass -s /usr/local/bin/zsh デフォルトシェルの変更

もっといい方法があればどんどん追記する。

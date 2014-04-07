#====================================
# 実行方法
# Brewfileのあるディレクトリで`brew bundle`
#====================================

# Homebrewを最新版にアップデート
update

# Formulaを更新
upgrade

# Add Repository
tap homebrew/binary
tap phinze/homebrew-cask

# Packages for development
# install crul
install fontforge
install git
install vim
# install imagemagick
install wget
install heroku-toolbelt
install rmtrash
# install pdftk
# install php55 --with-pgsql --with-pdo-pgsql
# install php55-mcrypt php55-xdebug php55-opcache composer
install tmux
install tree
# zshは/etcを参照しないようにする(参考：brew info zsh)
install zsh --disable-etcdir

# macvimを入れる
tap supermomonga/homebrew-splhack
install cscope
install lua
install --HEAD cmigemo-mk
install --HEAD ctags-objc-ja
install gettext-mk
install --HEAD macvim-kaoriya
linkapps

# powerline用フォントを作成する
tap sanemat/font
install --powerline --vim-powerline ricty

# brew-cask
install brew-cask

#cask install android-studio
cask install adobe-reader
cask install alfred
cask alfred link
cask install appcleaner
cask install arduino
cask install airdisplay
cask install bettertouchtool
cask install caffeine
cask install cyberduck
cask install coteditor
cask install dropbox
cask install dash
cask install evernote
cask install github
cask install google-chrome
cask install google-drive
cask install google-hangouts
cask install google-japanese-ime
cask install KeyRemap4MacBook
cask install iterm2
cask install kobito
cask install macvim
cask install pycharm-ce
cask install shiftit
cask install skitch
cask install skype
cask install virtualbox
cask install vagrant
cask install wunderlist
cask install xtrafinder
# 不要なファイルを削除
cleanup

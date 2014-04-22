#====================================
# 実行方法
# Brewfileのあるディレクトリで`brew bundle`
#====================================

# Homebrewを最新版にアップデート
update || true

# Formulaを更新
# upgrade || true

# Add Repository
tap homebrew/versions || true
tap phinze/homebrew-cask || true
tap homebrew/binary || true

# Packages for development
# install crul
install fontforge || true
install git || true
install hg || true
install python3 || true
install vim || true
install curl || true
install wget || true
install heroku-toolbelt || true
install rmtrash || true
install tmux || true
install tree || true
# zshは/etcを参照しないようにする(参考：brew info zsh)
install --disable-etcdir zsh || true

# macvimを入れる
tap supermomonga/homebrew-splhack
install cscope || true
install lua || true
install --HEAD cmigemo-mk
install --HEAD ctags-objc-ja
install gettext-mk
install --HEAD macvim-kaoriya
linkapps

# powerline用フォントを作成する
tap sanemat/font
install --powerline --vim-powerline ricty

# brew-cask
install brew-cask || true

#cask install android-studio
cask install appcleaner || true
cask install adobe-reader || true
cask install alfred || true
cask alfred link || true
cask install arduino || true
cask install airdisplay || true
cask install bettertouchtool || true
cask install blender || true
cask install caffeine || true
cask install cyberduck || true
cask install coteditor || true
cask install colors || true
cask install dropbox || true
cask install dash || true
cask install evernote || true
cask install github || true
cask install google-chrome || true
cask install google-drive || true
cask install google-hangouts || true
cask install google-japanese-ime || true
cask install KeyRemap4MacBook || true
cask install iterm2 || true
cask install imageoptim || true
cask install kobito || true
cask install macvim || true
cask install mysqlworkbench || true
cask install the-unarchiver || true
cask install pycharm-ce || true
cask install shiftit || true
cask install skitch || true
cask install skype || true
cask install steam || true
cask install sequel-pro || true
cask install sitesucker || true
cask install sourcetree || true
cask install speedlimit || true
cask install sublime-text || true
cask install unity3d || true
cask install virtualbox || true
cask install vagrant || true
cask install wunderlist || true
cask install xtrafinder || true
cask install yorufukurou || true
# 不要なファイルを削除
cleanup

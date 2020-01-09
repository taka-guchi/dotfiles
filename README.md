# dotfiles
### setupコマンド
```
$ git clone https://github.com/taka-guchi/dotfiles
$ cd dotfiles
$ ./link.sh
```
### その他インストールするもの
* zsh
* nvim
* tmux
* fzf
```
$ brew install zsh
$ brew install nvim
$ brew install tmux
$ brew install fzf
```
### 好きなitermのカラースキームを入れる
* [lucario](https://github.com/raphamorim/lucario)
```
$ mkdir ~/Colors
$ cd ~/Colors
$ git clone https://github.com/raphamorim/lucario.git
```
※iTerm2→Preferences→Profiles→Colors→Color Presets...→Import...→~/Colors/lucario/iterm/Lucario.itermcolors
### fontを入れる
* Ricty for Powerline
```
$ brew upgrade ricty --vim-powerline --powerline
$ cp -f /usr/local/Cellar/ricty/4.0.1/share/fonts/Ricty*.ttf ~/Library/Fonts/
$ fc-cache -vf
```
※iTerm2→Preferences→Profiles→Text→Font→Ricty for Powerlineを選択
* [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)(vim-devicons用)
```
$ cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```
※iTerm2→Preferences→Profiles→Text→Non-ASCII Font→DroidSansMono Nerd Font...を選択  
[参考](https://qiita.com/park-jh/items/4358d2d33a78ec0a2b5c)

#!/bin/sh

rsync -uvrP --delete-after ~/git/dotfiles/.config/dunst              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/fontconfig         ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/gtk-2.0            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/gtk-3.0            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/lf                 ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/mpd/mpd.conf       ~/.config/mpd/
rsync -uvrP --delete-after ~/git/dotfiles/.config/mpv                ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/ncmpcpp            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/nvim               ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/pulse/daemon.conf  ~/.config/pulse/
rsync -uvrP --delete-after ~/git/dotfiles/.config/shell              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/sxhkd              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/sxiv               ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/wget               ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/x11                ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/zathura            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/zsh/.zshrc         ~/.config/zsh/
rsync -uvrP --delete-after ~/git/dotfiles/.config/fcitx/config       ~/.config/fcitx/
rsync -uvrP --delete-after ~/git/dotfiles/.config/fcitx/profile      ~/.config/fcitx/
rsync -uvrP --delete-after ~/git/dotfiles/.config/mimeapps.list      ~/.config/
rsync -uvrP --delete-after ~/git/dotfiles/.config/user-dirs.dirs     ~/.config/
rsync -uvrP --delete-after ~/git/dotfiles/.config/picom.conf         ~/.config/

rsync -uvrP --delete-after ~/git/dotfiles/.local/bin                 ~/.local
rsync -uvrP --delete-after ~/git/dotfiles/.local/src                 ~/.local
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/applications  ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/larbs         ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/wallpaper.jpg ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/themes        ~/.local/share

cp ~/git/dotfiles/.config/shell/profile ~/.zprofile
cp ~/git/dotfiles/.config/x11/xprofile  ~/.xprofile
cp ~/git/dotfiles/.local/share/bg  ~/.local/share

rsync -uvrP --delete-after ~/git/dotfiles/pinentry                   ~


#rsync -uvrP --delete-after ~/git/dotfiles/.gnupg                     ~
#rsync -uvrP --delete-after ~/git/dotfiles/.ssh                       ~

#sudo rsync -uvrP --delete-after /git/dotfiles/etc/ssh                /etc
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/tor                /etc
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/X11                /etc
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/pacman.conf        /etc/
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/paru.conf          /etc/

#sudo rsync -uvrP --delete-after /git/dotfiles/usr/lib/elogind/system-sleep/lock.sh             /usr/lib/elogind/system-sleep/

#rsync -uvrP --delete-after ~/git/dotfiles/.config/aacs               ~/.config/
#rsync -uvrP --delete-after ~/git/dotfiles/.config/mpd/playlists      ~/.config/mpd/

#rsync -uvrP --delete-after ~/git/dotfiles/.local/share/password-store ~/git/dotfiles/.local/share/

#!/bin/sh

rsync -uvrP --delete-after ~/git/dotfiles/.config/alacritty          ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/dunst              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/fontconfig         ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/gtk-2.0            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/gtk-3.0            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/lf                 ~/.config
#rsync -uvrP --delete-after ~/git/dotfiles/.config/lf_kitty           ~/.config
#rsync -uvrP --delete-after ~/git/dotfiles/.config/mpd/mpd.conf       ~/.config/mpd/
rsync -uvrP --delete-after ~/git/dotfiles/.config/mpv                ~/.config
#rsync -uvrP --delete-after ~/git/dotfiles/.config/ncmpcpp            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/newsboat           ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/nvim/init.lua      ~/.config/nvim
rsync -uvrP --delete-after ~/git/dotfiles/.config/nvim/ftplugin      ~/.config/nvim
rsync -uvrP --delete-after ~/git/dotfiles/.config/nvim/lua           ~/.config/nvim
rsync -uvrP --delete-after ~/git/dotfiles/.config/pipewire           ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/shell              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/sxhkd              ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/sxiv               ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/wget               ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/x11                ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/zathura            ~/.config
rsync -uvrP --delete-after ~/git/dotfiles/.config/zsh                ~/.config/
rsync -uvrP --delete-after ~/git/dotfiles/.config/mimeapps.list      ~/.config/
rsync -uvrP --delete-after ~/git/dotfiles/.config/user-dirs.dirs     ~/.config/
rsync -uvrP --delete-after ~/git/dotfiles/.config/picom.conf         ~/.config/
# rsync -uvrP --delete-after ~/git/dotfiles/.config/pam-gnupg         ~/.config/

rsync -uvrP --delete-after ~/git/dotfiles/.local/bin                 ~/.local
rsync -uvrP --delete-after ~/git/dotfiles/.local/src                 ~/.local
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/applications  ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/larbs         ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/wallpaper.jpg ~/.local/share
rsync -uvrP --delete-after ~/git/dotfiles/.local/share/themes        ~/.local/share

cp ~/git/dotfiles/.config/shell/profile ~/.zprofile
cp ~/git/dotfiles/.config/x11/xprofile  ~/.xprofile
cp ~/git/dotfiles/.local/share/bg  ~/.local/share


rsync -uvrP --delete-after ~/git/dotfiles/.gnupg/gpg-agent                   ~/.gnupg
#rsync -uvrP --delete-after ~/git/dotfiles/.gnupg                             ~
#rsync -uvrP --delete-after ~/git/dotfiles/.ssh                               ~

#sudo rsync -uvrP --delete-after /git/dotfiles/etc/ssh                        /etc
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/tor                        /etc
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/X11/xorg.conf.d            /etc/X11
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/pacman.conf                /etc/
#sudo rsync -uvrP --delete-after /git/dotfiles/etc/paru.conf                  /etc/
#sudo rsync -uvrP --delete-after ~/git/dotfiles/etc/pam.d/i3lock              /etc/pam.d/
#sudo rsync -uvrP --delete-after ~/git/dotfiles/etc/pam.d/system-local-login  /etc/pam.d/

#sudo rsync -uvrP --delete-after /git/dotfiles/usr/lib/elogind/system-sleep/lock.sh  /usr/lib/elogind/system-sleep/

#rsync -uvrP --delete-after ~/git/dotfiles/.config/aacs                       ~/.config/
#rsync -uvrP --delete-after ~/git/dotfiles/.config/mpd/playlists              ~/.config/mpd/

#rsync -uvrP --delete-after ~/git/dotfiles/.local/share/password-store        ~/git/dotfiles/.local/share/

#!/bin/sh

rsync -uvrP --delete-after ~/.config/alacritty          ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/dunst              ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/fontconfig         ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/gtk-2.0/gtkrc-2.0  ~/git/dotfiles/.config/gtk-2.0
rsync -uvrP --delete-after ~/.config/gtk-3.0            ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/lf                 ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/lf_kitty           ~/git/dotfiles/.config
#rsync -uvrP --delete-after ~/.config/mpd/mpd.conf       ~/git/dotfiles/.config/mpd/
rsync -uvrP --delete-after ~/.config/mpv/script-opts    ~/git/dotfiles/.config/mpv
rsync -uvrP --delete-after ~/.config/mpv/script-modules ~/git/dotfiles/.config/mpv
rsync -uvrP --delete-after ~/.config/mpv/scripts        ~/git/dotfiles/.config/mpv
rsync -uvrP --delete-after ~/.config/mpv/input.conf     ~/git/dotfiles/.config/mpv
rsync -uvrP --delete-after ~/.config/mpv/mpv.conf       ~/git/dotfiles/.config/mpv
#rsync -uvrP --delete-after ~/.config/ncmpcpp            ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/newsboat           ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/nvim/init.lua      ~/git/dotfiles/.config/nvim
rsync -uvrP --delete-after ~/.config/nvim/ftplugin      ~/git/dotfiles/.config/nvim
rsync -uvrP --delete-after ~/.config/nvim/lua           ~/git/dotfiles/.config/nvim
rsync -uvrP --delete-after ~/.config/pipewire           ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/shell              ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/sxhkd              ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/sxiv               ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/wget               ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/x11                ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/zathura            ~/git/dotfiles/.config
rsync -uvrP --delete-after ~/.config/zsh                ~/git/dotfiles/.config/
rsync -uvrP --delete-after ~/.config/fcitx/config       ~/git/dotfiles/.config/fcitx/
rsync -uvrP --delete-after ~/.config/mimeapps.list      ~/git/dotfiles/.config/
rsync -uvrP --delete-after ~/.config/user-dirs.dirs     ~/git/dotfiles/.config/
rsync -uvrP --delete-after ~/.config/picom.conf         ~/git/dotfiles/.config/
# rsync -uvrP --delete-after ~/.config/pam-gnupg          ~/git/dotfiles/.config/

rsync -uvrP --delete-after ~/.local/bin                 ~/git/dotfiles/.local
rsync -uvrP --delete-after ~/.local/src                 ~/git/dotfiles/.local
rsync -uvrP --delete-after ~/.local/share/applications  ~/git/dotfiles/.local/share
rsync -uvrP --delete-after ~/.local/share/larbs         ~/git/dotfiles/.local/share
# rsync -uvrP --delete-after ~/.local/share/wallpaper.jpg ~/git/dotfiles/.local/share
rsync -uvrP --delete-after ~/.local/share/themes        ~/git/dotfiles/.local/share

ln -s ~/.config/shell/profile ~/git/dotfiles/.zprofile
ln -s ~/.config/x11/xprofile ~/git/dotfiles/.xprofile
ln -s ~/.local/share/wallpaper.jpg ~/git/dotfiles/.local/share/bg


rsync -uvrP --delete-after ~/.gnupg/gpg-agent.conf         ~/git/dotfiles/.gnupg/
#rsync -uvrP --delete-after ~/.gnupg                        ~/git/dotfiles
#rsync -uvrP --delete-after ~/.ssh                          ~/git/dotfiles

#rsync -uvrP --delete-after /etc/ssh                        ~/git/dotfiles/etc
#rsync -uvrP --delete-after /etc/tor                        ~/git/dotfiles/etc
rsync -uvrP --delete-after /etc/X11/xorg.conf.d            ~/git/dotfiles/etc/X11/
rsync -uvrP --delete-after /etc/pacman.conf                ~/git/dotfiles/etc/
rsync -uvrP --delete-after /etc/paru.conf                  ~/git/dotfiles/etc/
rsync -uvrP --delete-after /etc/pam.d/i3lock               ~/git/dotfiles/etc/pam.d/
rsync -uvrP --delete-after /etc/pam.d/system-local-login   ~/git/dotfiles/etc/pam.d/

rsync -uvrP --delete-after /usr/lib/elogind/system-sleep/lock.sh  ~/git/dotfiles/usr/lib/elogind/system-sleep/

#rsync -uvrP --delete-after ~/.config/aacs                  ~/git/dotfiles/.config/
#rsync -uvrP --delete-after ~/.config/mpd/playlists         ~/git/dotfiles/.config/mpd/

#rsync -uvrP --delete-after ~/.local/share/password-store   ~/git/dotfiles/.local/share

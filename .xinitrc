#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Ez meghivja az xprofile-t
#[ -f ~/.xprofile ] && . ~/.xprofile

# caps-lock change to escapea
#setxkbmap -option caps:escape


# nvidia-settings are in ~/.nvidia-settings-rc
nvidia-settings --load-config-only &

#xrandr --dpi 96

# dwm --------------------
slstatus &
nitrogen --restore &
picom &
exec dwm
#-------------------------

#exec herbstluftwm --locked 
#exec awesome 
#exec i3 
#exec startxfce4


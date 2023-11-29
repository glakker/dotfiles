Title: Hogyan telepítsük a suckless alkalmazásokat

# Installálás

A fordítás a config.h file-ból történik.
A módosításainkat a config.def.h-ba tesszük, majd átmásoljuk a config.h-ba:
> cp confid.def.h config.h

Célszerű ezekről .bak file-okat készíteni a módosítások előtt.

Ezután
> sudo make clean install

# Patch

A patch is a config.def.h-ba dolgozik.
> patch < filenév.diff

Hiba esetén manuálisan kell átírni a config.def.h-t.
Ezután installálás:
> cp config.def.h config.h
> patch < filenév.diff

## Alkalmazott patch-ek
### dwm
+ attachbottom
+ focusadjacenttab
+ movestack
+ quitprompt
+ tatami  
+ threecolumn
+ pertag
+ fixborders (Az alpha patch oldalán van. picom-hoz kell)
+ scratchpad

### st
+ st-scrollback
+ st-scrollback-mouse
+ st-scrollback-reflow
+ st-w3m

### dmenu
+ highlight
+ numbers

# Megjegyzések
## Ha az st terminál körül gap marad, a dwm config.h-ban átírni:
> static const int resizehints = 0;

## .xinitrc
> # xrandr --dpi 96 ### inkább az Xft.dpi-t kell beállítani
> nvidia-settings --load-config-only &
> slstatus &
> nitrogen --restore &
> picom &
> exec dwm

## .Xresources 
> Xcursor.size: 25
> # Az alkalmazások betűméretéhez:
> Xft.dpi: 108

## slstatus 
hang /dev/mixer megjelenítéshez:
Add 'snd_pcm_oss' to your /etc/modules-load.d/modules.conf file.

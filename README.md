## My cfg i3wm 
This config was tested in default installation of manjaro i3wm.

## Preview.
![Image](https://i.imgur.com/x4mZBhr.jpg)

### Dependencies
- i3 (i3-gaps)
- polybar
- ttf-font-awesome

You can install these dependencies running the follow command in your console: (This work for arch/arch-based distributions)
    sudo pacman -S i3-gaps polybar ttf-font-awesome --noconfirm

### Install
- Install dependencies.
- Backup your currently config.
- Replace folder ".config" in "~/.config" (This folder contain the polybar config)
- Replace folder ".i3" in "~/.i3" (This folder contain the i3 config)
- Restart i3.

#### Problems.
- Sometimes, after to install some fonts, these dont appear in fc-list. For fix this, run:
    "sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf"
  and reload 
    "sudo fc-cache -f -v"

  Now, you should see font in fc-list.

- Fix the time in Manjaro. (Source: https://wiki.archlinux.org/index.php/System_time)
    timedatectl set-timezone Zone/SubZone #Set your timezone
    ntpd -qg #Sincronize your clock using ntp.
    hwclock --systohc #Write time against hardware clock.

#### Other commons apps to install.
 -terminator 
 -pavucontrol
 -pulseaudio && pulseaudio-bluetooth
 -bluez && bluez-utils
 -flameshot


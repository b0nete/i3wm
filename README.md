
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

#### Three displays with Intel(R) UHD Graphics 620 - Lenovo T480
 For some reason, when you connect a 3rd display with an adapter -USB C to HDMI- arch detect the monitor and you can see with "xrandr --listmonitors", but this doesnt appear in arandr. So, you must do the follow:

Get the correct mode changing the resolution and monitor frequency.

    # gtf 1920 1080 60
    
So, add the newmode specyfing the output, add this mode to correct display, and bind with display.

    # xrandr --newmode "1920x1080_60.00"  172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
    # xrandr --addmode HDMI2 "1920x1080_60.00"
    # xrandr --output HDMI2 --mode "1920x1080_60.00"
    
 #### Fix nvidia tearing.
  Add the follow line in your startup script. Example: $HOME/.i3/config
 
    nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"

 

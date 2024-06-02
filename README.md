# PPPwn_STvBox v0.1 (ATM only Amlogic S905w and PS4 1100)
PPPwn for Smart Tv Boxes (STB)
boot from SD or eMMC (internal storage) for better performance ~40sec from boot till PPPwn-ed

Inicially it will only support **Amlogic S905w*** and PS4 on fw ***11.00***
in a near future I want to provide support for more devices

### basically any model that looks like this (the box or the remote) MAY be compatible
(note that some models uses rockchip or allwinner... we dont support it YET)
![S905w Example](https://mxqpro.oficialnanet.com/wp-content/uploads/2022/12/3.webp)

> [!NOTE]
> credits for everyone that made armbian, goldhen, PPPwn, PPPwn_Cpp, PI-Pwn-Stooged possible
and me for this SD.img
> All winner Variant seens to be compatible with Armbian Orange PI builds like you can see [here](https://forum.armbian.com/topic/17964-mxqpro-4k-8g128g-allwinner-h3/) or [here](https://docs.armbian.com/Hardware_Allwinner-H3/) I downloaded [this version](https://www.armbian.com/orange-pi-pc/) for test
> but [this video](https://www.youtube.com/watch?v=GHk22VIxoIU) suggest a different version... let's see
>
> I don't think I'm going to make any progress today, my neighbors have been making a tremendous amount of noise this whole weekend and I haven't been able to concentrate at all because of those M#F#s. Added to that I have a bad cold (that's never stopped me but this time I'm feeling really bad)


## how to install
1. download the image and burn in you SD (> 4GB) using ```dd``` (Linux,BSD,Mac OS,Unix-like), [win32imager](https://win32diskimager.org/), [Balena Etcher](https://etcher.balena.io/) or [Rufus](https://rufus.ie)
3. insert the sdcard on your STB
4. turn on and that's it, enjoy your PPPwn-STvBox!

### Download links
[github in 33 parts](https://github.com/llbranco/PPPwn_STvBox/archive/refs/heads/main.zip)

[mediafire](https://www.mediafire.com/file/v7rdkb4iji70zgq/PPPwn_STvBox_v0.1.7z/file)

[pcloud](https://u.pcloud.link/publink/show?code=XZwH5B0ZjzaAv4CqXKytYJz4vH0pvYiIi3Sk)


## SSH and Passwords
you can use SSH or putty
you can use the name ***pppwn*** instead of IP
```
pppwn
```

root pass
```
12345qwert
```

username (sudo)
```
pppwn
```
pass
```
pppwn
```

## To install on eMMC (internal storage) do it at your own risk
```
cd /root/
sudo ./install-aml.sh
```

## ToDo List
- [ ] Logo
- [ ] Ascii logo
- [ ] PPPwnpi installer at first boot
- [ ] support for all S9xx variants
- [ ] support for all Amlogic variants
- [ ] support for rockchip and variants
- [ ] support for Allwinner and variants
- [ ] installer
- [ ] dmsg on led display (for STB that have it)


### Compatibility list (brand, model, processor, RAM + ROM)
- [x] Aquario SV2000, S905w 1G RAM+8ROM
- [x] MXQ Pro 4k, S905w 1G RAM+8ROM
- [x] Tanix TX3 mini, S905w 1G RAM+8ROM (not the red board, but probably work on the red board too)
- [ ] probably work on any s905w 1G RAM+8ROM Out-of-Box

# PPPwn_STvBox v0.1 (ATM only Amlogic S905w and PS4 1100)
PPPwn for Smart Tv Boxes (STB)
boot from SD or eMMC (internal storage) for better performance ~40sec from boot till PPPwn-ed

Inicially it will only support **Amlogic S905w*** and PS4 on fw ***11.00***
in a near future I want to provide support for more devices

> [!NOTE]
> credits for everyone that made PPPwn, PPPwn_Cpp, PPPwn_pi possible
and me for this image


## how to install
1. download the image and burn in you SD (> 4GB) using dd, [win32imager](https://win32diskimager.org/) or [Balena Etcher](https://etcher.balena.io/)
2. insert the sdcard on your STB (it has to be off)
3. turn on and that's it, enjoy your PPPwn-STvBox!

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
sudo ./root/install-aml.sh
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

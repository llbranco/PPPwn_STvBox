# PPPwn_STvBox
PPPwn for Smart Tv Boxes (STB)
boot from SD or eMMC (internal storage) for better performance ~40sec from boot till PPPwn-ed

Inicially it will only support **Amlogic S905w*** and PS4 on fw ***11.00***
in a near future I want to provide support for more devices

> [!NOTE]
> credits for everyone that made PPPwn, PPPwn_Cpp, PPPwn_pi possible
and me for this image

## how to install
1. download the image and burn in you SD using dd, w32imager or balena etcher
2. insert the sdcard on your STB (it has to be off)
3. that's it


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

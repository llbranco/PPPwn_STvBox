# PPPwn_STvBox v1.3STB
Use your Smart TV Box to jailbreak the PS4 thru PPPwn using Linux for better performance.
This method uses the C++ version of PPPwn, made by [xfangfang](https://github.com/xfangfang/PPPwn_cpp)

Project based on [llbranco/PPLGPwn v1.3](https://github.com/llbranco/PPLGPwn)

I decided to create a different repository instead of a fork of PPLGPwn since I intend to follow slightly different paths at the beginning,
but with significant differences in the future, such as installing Linux from the SD card to the internal memory of STBs, something that would definitely end up bricking LG TVs.


![image](https://github.com/llbranco/PPPwn_STvBox/assets/5321071/92f898e6-bf4a-4204-aa6d-0151d662f3e9)


## If you liked my project and want to help me, consider buying me a coffee
<a href='https://ko-fi.com/J3J4Y2DQ4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a> [![Support me on Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dllbranco%26type%3Dpatrons&style=flat-square)](https://patreon.com/llbranco)


## Changes compared to [llbranco/PPLGPwn](https://github.com/llbranco/PPLGPwn)
- PPPwn_STvBox isn't compatible (or supported even if it runs) with WebOS.
- Different paths.
- STB is compatible with apt.
- STB supports dual boot and/or system to emmc/nand (which is impossible on WebOS).
- In future versions, it may be different to a level that could brick a WebOS system.


# Wich Linux I need to use on my Smart TV Box?
1. You need to know which SoC brand you have... on Android you can use ```CPU-z``` ```AIDA64```  ```DevCheck``` ```Droid Hardware Info``` ```Android System Info``` or any similar


2. Download a Linux image to your SoC


### All winner
> any Linux based on ```Orange Pi PC``` or ```Any H3 variant```
> 
> my suggestion is the [original Orange-Pi Debian or Ubuntu](http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-PC.html) or [Armbian](https://www.armbian.com/orange-pi-pc/)

### Amlogic
> use ArmBian
[S9xx](https://www.armbian.com/amlogic-s9xx-tv-box/)

### Rockchip
> [try armbian](https://www.armbian.com/soc/rockchip/) I don't have access to a RK STB to test, so it's on you... please lemme know which one worked for you.


3. Burn the image on any SD card using [Balena Etcher](https://etcher.balena.io/), [win32diskimager](https://sourceforge.net/projects/win32diskimager/) or [Rufus](https://rufus.ie/)


4. Shutdown your STB... insert the SD on your STB and turn it on until it boots on linux (in somemodels you need to insert a NON-METALIC pin on the AV port for that)


## How to install PPPwn_STvBox
copy and run this script
```
curl -fsSLO https://github.com/llbranco/PPPwn_STvBox/raw/main/PPPwn/install.sh && chmod +x ./install.sh && ./install.sh
```

(optional)to install the PS4Hen-VTX run this
copy and run this script
```
curl -fsSLO https://github.com/llbranco/PPPwn_STvBox/raw/main/PPPwn/install_vtx.sh && chmod +x ./install_vtx.sh && ./install_vtx.sh
```

### I haven't had time yet to create a universal solution for automatic boot on all these versions.
in meanwhile try to create/edit ```/etc/rc.local``` and run script from there (it may or may not work depend on the system you choose)
```
#!/bin/bash

.~/PPPwn/run.sh

exit 0
```
then give ```/etc/rc.local``` executable with  ```chmod+x /etc/rc.local```


## To install on eMMC (internal storage) do it at your own risk (just work for Amlogic ATM)
```
cd /root/
sudo ./install-aml.sh
```


## ToDo List
- [ ] Logo
- [x] Ascii logo
- [ ] PPPwnpi installer at first boot
- [x] support for all S9xx variants
- [x] support for all Amlogic variants
- [ ] support for rockchip and variants
- [x] support for Allwinner and variants
- [x] installer
- [ ] dmsg on led display (for STB that have it)


### Compatibility list (brand, model, processor, RAM + ROM)
- [x] Aquario SV2000, S905w 1G RAM+8ROM
- [x] MXQ Pro 4k, S905w 1G RAM+8ROM
- [x] MXQ Pro 5G 4k, Allwinner H3 1G RAM+8ROM
- [x] Tanix TX3 mini, S905w 1G RAM+8ROM (not the red board, but probably work on the red board too)
- [ ] Rockchip variant


### Credits
This project is based on/inspired by them and all the contributors to their respective projects; they deserve all the credit.
[TheFlow PPPwn](https://github.com/TheOfficialFloW/PPPwn), [stooged pi-PPPwn](https://github.com/stooged/PI-Pwn), [Armbian](https://www.armbian.com), [xfangfang PPPwn_cpp](https://github.com/xfangfang/PPPwn_cpp), [Sistro GoldHen](https://github.com/GoldHEN/GoldHEN), Thanks to my friend for lending me and allowing me to modify his Allwinner TV box and finally me for putting everything together.

## vent
I curse my neighbors for making my life miserable and for making it practically impossible to think, study or work. without my neighbors it would be infinitely easier.

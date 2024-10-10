# splashtop-rmm-installer-linux
Installs Splashtop RMM under linux and associates the MIME type.
# Dependencies
This [blog post by GloriousEggroll](https://www.gloriouseggroll.tv/how-to-get-out-of-wine-dependency-hell/) has a lot of good info on fixing WINE dependency issues.  
You will need to enable 32 bit libraries in your distro (Unless you're using the experimental WOW64 WINE build)  
You will want to install `lib32-gnutls lib32-pipewire lib32-libpulse lib32-gst-plugins-base lib32-gst-plugins-good samba` or whichever equivalent your distro offers.  
You should also run the latest version of WINE that your distro offers. These scripts were tested with 9.19, but you should use WINE 9.0 or later (you may need to install wine-staging in your distro.)
# Usage
1. Clone this repo
2. Run `./install.sh` in your terminal
3. Try Splashtop RMM with your RMM of choice to verify it works.
Optionally you may also run ./install-splashtop-business.sh as well, should you need Splashtop Business.
```sh
git clone https://github.com/alexankitty/splashtop-rmm-installer-linux
cd splashtop-rmm-installer-linux
./install.sh
```

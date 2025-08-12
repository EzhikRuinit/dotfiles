# dotfiles
simple river dotfiles

wm: riverwm

bar: yambar

terminal: foot

shell: zsh

prompt: starship

player: rmpc

fetch: fastfetch

preview:
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/393cc833-0c15-42c8-b1c0-205138f5d845" />

installation:
1. clone the repo
```
git clone https://github.com/EzhikRuinit/dotfiles --branch riverwm --depth 1
```
2. copy all of the configs
```
cd dotfiles/.config && cp -r ./* ~/.config
```
3. set correct permissions for some files
```
chmod +x ~/.config/river/init
chmod +x ~/.config/yambar/mpd.sh
```
4. done

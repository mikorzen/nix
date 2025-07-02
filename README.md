# my ❄️ config

## Installation

```bash
git clone https://github.com/mikorzen/nix.git
```

```bash
cd <cloned repo>
```

```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
```

```bash
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount ./hosts/<machine-name>/disko.nix
```

```bash
sudo nixos-install --flake .#<machine-name>
```

```bash
reboot
```

## Setup

```bash
git clone https://github.com/mikorzen/nix.git
```

```bash
cd <cloned repo>
```

```bash
sudo nix-channel --update
```

```bash
nix flake update
```

```bash
nixos-rebuild switch --flake .#<machine-name>
```

```bash
reboot
```

```bash
nix run home-manager/master -- init --switch
```

```bash
rm $HOME/.config/fish/config.fish $HOME/.config/ghostty/config
```

```bash
cd <cloned repo>
```

```bash
home-manager switch --flake .#<user-name>@<machine-name>
```

install flatpaks:

```bash
flatpak install flathub app.zen_browser.zen
```

```bash
flatpak install flathub com.github.tchx84.Flatseal
```

```bash
flatpak install flathub io.github.flattool.Warehouse
```

```bash
flatpak install flathub io.github.giantpinkrobots.flatsweep
```

set Zen as the default browser:

```bash
xdg-settings set default-web-browser /var/lib/flatpak/exports/share/applications/app.zen_browser.zen.desktop
```

download ssh keys from Proton Pass, put them in `$HOME/.ssh`, and make sure they have correct permissions:

```bash
chmod 600 <private-key>
```

```bash
chmod 644 <public-key>.pub
```

## List of workarounds in this config

### temporary fixes which are supposed to be removed as underlying issues are fixed

* gdm/gnome login fail for the first couple of second after boot • [hosts/default/miscellaneous.nix](hosts/default/miscellaneous.nix)
* nvidia broken suspend/sleep • [hosts/default/miscellaneous.nix](hosts/default/miscellaneous.nix)
* ghostty unusable on 6.15.4 kernel • [hosts/default/software.nix](hosts/default/software.nix)

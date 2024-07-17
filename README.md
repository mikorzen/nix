# Remember to change disk UUIDs under `./hosts/<host>/os/hardware/fileSystems.nix`


Run as root and user:
```
nix-channel --add https://nixos.org/channels/nixos-unstable nixos

nix-channel --update
```

Yellow gold: `#ffbb00`

## To-do
- [x] podman
- [x] write hypridle inhibit widget for ags
- [x] clipboard manager (clipse)
- [x] find some apps for general stuff
- [x] flatpak apps
- [x] steam
- [x] bottles
- [x] ? find some nice icon theme
- [ ] secrets management?
- [ ] full disk encryption (`luks`)?
- [ ] fix drag and drop between gtk apps? (how tho lol)
- [ ] secure boot (`lanzaboote`)?
- [x] change `zstd` compression to `lzo`
- [x] add `noatime` to partiton options everywhere
- [ ] ~~die~~

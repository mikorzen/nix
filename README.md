# Remember to change disk UUIDs under `./hosts/<host>/os/hardware/fileSystems.nix`


Run as root and user:
```
nix-channel --add https://nixos.org/channels/nixos-unstable nixos
nix-channel --update
```

Yellow gold: `#ffbb00`

## To-do
- [ ] secrets management?
- [ ] full disk encryption (`luks`)?
- [ ] secure boot (`lanzaboote`)?
- [ ] ~~die~~

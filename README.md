# 🐧 My NixOS Configuration <img src="https://github.com/user-attachments/assets/f46d3434-59e3-4c1f-b4a5-b548467165f4" width=25/>

Welcome to my NixOS configuration repo! This setup manages my system using the power of [Nix](https://nixos.org) and [Home Manager](https://nix-community.github.io/home-manager/), providing a reproducible and declarative development environment across machines.

---

## Folder Structure
``` bash
nix-dotfiles/
├── flake.nix           # Flake entry point
├── flake.lock          # Locked dependencies
├── host/               # System-specific configurations
    ├──modules          # System-specific modules configurations
├── modules/            # Custom reusable modules
├── users/              # Home Manager user configurations
├── wallpapers          # Wallpaper collection
└── README.md           # This file
```

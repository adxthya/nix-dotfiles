{ inputs, config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/system.nix
    ./modules/networking.nix
    ./modules/user.nix
    ./modules/desktop.nix
    ./modules/virtualization.nix
    ./modules/audio.nix
    ./modules/bluetooth.nix
    ./modules/security.nix
    ./modules/environment.nix
    ./modules/graphics.nix
  ];

  system.stateVersion = "24.05";
}

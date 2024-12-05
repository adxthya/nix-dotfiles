{ config, pkgs, inputs, unstable, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs;[
    zsh
    stow
    slurp
    grim
    obsidian
    vlc
    vesktop
    hyperfine
    unstable.qutebrowser
    swww
    waybar
    vscode
    seahorse
    pywal
    libnotify
    pavucontrol
    power-profiles-daemon
    nodejs_22
    neovim
    zig # neovim compiler
    fzf
    unstable.freetube
    syncthing
  ];
  services.mpris-proxy.enable = true;

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

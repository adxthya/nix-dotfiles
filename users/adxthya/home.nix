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
    discord
    hyperfine
    unstable.qutebrowser
    swww
    waybar
    vscode
    gnome.seahorse
    pywal
    libnotify
    pavucontrol
    power-profiles-daemon
    nodejs_22
    go
    neovim
    zig # neovim compiler
    fzf
  ];


  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

{ config, pkgs, inputs, unstable, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs;[
    stow
   
    # Screenshots
    slurp
    grim

    #Notes
    obsidian

    vlc
    vesktop

    # Wallpaper
    swww
    waypaper


    waybar
    vscode-fhs
    seahorse
    libnotify
    pavucontrol
    power-profiles-daemon
    fzf
    unstable.freetube
    firefox
    bitwarden
    zed-editor
    veracrypt
    telegram-desktop
    protonvpn-gui
    ghostty
    obsidian            
  ];
  services.mpris-proxy.enable = true;

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

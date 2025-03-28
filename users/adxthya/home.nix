{ config, pkgs, inputs, unstable, ... }:

let
  myPkgs = pkgs // {
    spotube = pkgs.callPackage ../../modules/spotube/package.nix {};
  };
in

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with myPkgs;[
    # Sync notes
    syncthing    

    # Terminal Youtube ;)
    inputs.yt-x.packages."${system}".default
    
    # Terminal Spotify ;) 
    ncspot   

    stow
    xviewer	
    brave   

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

    # Audio
    pavucontrol
    playerctl
    pamixer

    waybar
    vscode-fhs
    seahorse
    libnotify
    power-profiles-daemon
    fzf
    unstable.freetube
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

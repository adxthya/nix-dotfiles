{ config, pkgs, inputs, unstable, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs;[
    # Virtualization
    gnome-boxes

    # Prompt
    starship
    
    # Ricing
    fastfetch    
    pywal    
  
    # Sync notes
    syncthing    

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

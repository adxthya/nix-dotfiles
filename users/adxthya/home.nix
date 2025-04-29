{
  config,
  pkgs,
  inputs,
  unstable,
  ...
}: {
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs; [
    # Art
    krita

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

    # Screenshot and record utilities
    slurp
    grim
    wf-recorder

    # Notes
    obsidian

    # Media
    vlc

    # Messaing
    vesktop
    signal-desktop

    # Wallpaper
    swww
    waypaper

    # Audio
    pavucontrol
    playerctl
    pamixer

    # Utilities
    zoxide

    waybar
    vscodium-fhs
    seahorse
    libnotify
    power-profiles-daemon
    fzf
    bitwarden
    zed-editor
    veracrypt
    telegram-desktop
    protonvpn-gui
    ghostty
    obsidian
  ];
  services.mpris-proxy.enable = true;
  programs.zoxide.enable = true;

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pavucontrol
    git
    nh
    gh
    xfce.thunar
    networkmanagerapplet
    bluez
    glibc
    lxqt.lxqt-policykit
    glib
    gparted
    brightnessctl
    home-manager
    wlogout
    hyprlock
    power-profiles-daemon
  ];

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/adxthya/dotfiles";
  };

  services.devmon.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.power-profiles-daemon.enable = true;
}

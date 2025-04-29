{pkgs, ...}: {
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
    flake = "/home/adxthya/hypr-dotfiles";
  };

  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-media-tags-plugin
      thunar-volman
    ];
  };
  services = {
    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    power-profiles-daemon.enable = true;
  };
}

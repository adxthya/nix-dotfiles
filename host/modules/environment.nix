{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    pavucontrol
    git
    nh
    gh
    networkmanagerapplet
    bluez
    glibc
    polkit_gnome
    glib
    gparted
    brightnessctl
    home-manager
    wlogout
    hyprlock
    power-profiles-daemon
    (sddm-astronaut.override
      {
        embeddedTheme = "japanese_aesthetic";
      })
  ];

  # enable nix-ld for pip and friends
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc.lib
    zlib # numpy
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

  programs.bash = {
    interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };

  services = {
    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    power-profiles-daemon.enable = true;
    tumbler.enable = true;
  };
}

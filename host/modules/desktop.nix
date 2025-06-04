{pkgs, ...}: {
  services.xserver = {
    enable = true;
    xkb.layout = "us";
  };

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "sddm-astronaut-theme";
    package = pkgs.kdePackages.sddm;
    extraPackages = [
      pkgs.kdePackages.qt5compat
      pkgs.kdePackages.qtmultimedia
    ];
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.flatpak.enable = true;

  programs.dconf.enable = true;

  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  services.gnome.gnome-keyring.enable = true;
  security.pam.services.login.enableGnomeKeyring = true;

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFORMTHEME = "wayland";
    QT_SCALE_FACTOR_ROUNDING_POLICY = "RoundPreferFloor";
  };
}

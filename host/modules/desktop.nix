{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.flatpak.enable = true;

  programs.dconf.enable = true;

  services.gnome.gnome-keyring.enable = true;
  security.pam.services.login.enableGnomeKeyring = true;
  security.pam.services.gdm-password.enableGnomeKeyring = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFORMTHEME = "wayland";
    QT_SCALE_FACTOR_ROUNDING_POLICY = "RoundPreferFloor";
  };
}

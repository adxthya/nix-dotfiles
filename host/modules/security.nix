{ pkgs, ... }:

{
  security = {
    polkit.enable = true;

    pam.services.login.enableGnomeKeyring = true;
    pam.services.gdm-password.enableGnomeKeyring = true;
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryPackage = pkgs.pinentry-gtk2;
  };
}

{
  pkgs,
  unstable,
  ...
}: {
  home.packages = [unstable.rofimoji];
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}

{pkgs, ...}: {
  imports = [
    ./bash
    ./gtk
    ./qt
    ./dunst
    ./rofi
    ./direnv
    ./nvf
    ./starship
    ./ghostty
    ./fish
  ];
}

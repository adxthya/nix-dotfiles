{pkgs, ...}: {
  imports = [
    ./bash
    ./gtk
    ./qt
    ./rofi
    ./direnv
    ./nvf
    ./starship
    ./ghostty
    ./fish
    ./swaync
  ];
}

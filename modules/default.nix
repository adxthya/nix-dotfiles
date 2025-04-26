{ pkgs, ... }: {

  imports = [
    ./bash
    ./gtk
    ./qt
    ./dunst
    ./rofi
    ./direnv
    ./nvim
    ./starship
    ./ghostty
  ];

}

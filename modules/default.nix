{ pkgs, ... }: {

  imports = [
    ./zsh
    ./gtk
    ./qt
    ./dunst
    ./rofi
    ./nix
  ];

}

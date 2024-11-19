{ config, pkgs, inputs, unstable, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs;[
    zsh
    stow
    slurp
    grim
    obsidian
    vlc
    discord
    inputs.zen-browser.packages."${system}".default
    unstable.hyprgui
  ];


  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

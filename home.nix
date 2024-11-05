{ config, pkgs, ... }:

{
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs;[
    zsh
    stow
  ];
 
  # Zsh Config
  programs.zsh.enable = true;
  programs.zsh = {
    syntaxHighlighting.enable = true;
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
        owner = "zsh-users";
        repo = "zsh-autosuggestions";
        rev = "v0.4.0";
        sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
      }
    ];
    shellAliases = {
      c="clear";
      config="sudo nano ~/dotfiles/configuration.nix";
      build="sudo nixos-rebuild switch --flake ~/dotfiles/";
      home="nano ~/dotfiles/home.nix";
      home-build="home-manager switch --flake ~/dotfiles/";
    };
    oh-my-zsh = {
      enable = true;
      theme="robbyrussell";
      plugins = [
        "git"
        "sudo"
      ];
    };
  };

  # Gtk Config

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

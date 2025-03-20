{ pkgs, ... }:{

  programs.bash = {
    enable = true;
    shellAliases = {
      c = "clear";
      config = "sudo nano ~/hypr-dotfiles/host/configuration.nix";
      build = "nh os switch ~/hypr-dotfiles";
      home = "nano ~/hypr-dotfiles/users/adxthya/home.nix";
      home-build = "nh home switch ~/hypr-dotfiles";
      ns = "nix-shell -p";
    };
  };

}

{...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      c = "clear";
      config = "sudo nvim ~/hypr-dotfiles/host/configuration.nix";
      build = "nh os switch ~/hypr-dotfiles";
      home = "nvim ~/hypr-dotfiles/users/adxthya/home.nix";
      home-build = "nh home switch ~/hypr-dotfiles";
      hypr-config = "cd ~/.config/hypr/";
      ns = "nix-shell -p";
      shellinit = "echo 'use nix' > .envrc && direnv allow";
      cd = "z";
      v = "nvim";
      ncspot = "flatpak run io.github.hrkfdn.ncspot";
      gs = "git status";
      gc = "git commit -S -m";
    };
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };
}

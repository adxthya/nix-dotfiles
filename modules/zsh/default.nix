{ pkgs, ... }:{

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
      config="sudo nano ~/hypr-dotfiles/host/configuration.nix";
      build="nh os switch ~/hypr-dotfiles";
      home="nano ~/hypr-dotfiles/users/adxthya/home.nix";
      home-build="nh home switch ~/hypr-dotfiles/";
      ns="nix-shell -p";
      s="nh search";
    };
    initExtra = ''
      source <(fzf --zsh)
    '';
    envExtra = ''
      export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --border"
    '';
    oh-my-zsh = {
      enable = true;
      theme="nix";
      custom="/home/adxthya/dotfiles/modules/zsh/custom";
      plugins = [
        "git"
        "sudo"
      ];
    };
  };

}

{...}: {

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
      font-size = 13;
      background-opacity = 0.8;
      font-family = "Iosevka Nerd Font";
      cursor-style = "bar";
      window-padding-x = 10;
      window-padding-y = 10;
    };
  };

}

{ pkgs, ... }: {

  gtk = {
    enable = true;    
    # gtk theme
    theme.package = pkgs.dracula-theme;
    theme.name = "Dracula";
    # gtk icon theme
    iconTheme.package = pkgs.dracula-icon-theme;
    iconTheme.name = "Dracula";
    # gtk cursor theme
    cursorTheme.package = pkgs.rose-pine-cursor;
    cursorTheme.name = "BreezeX-RosePineDawn-Linux";
    cursorTheme.size = 24;
  };
  # setting home cursor
  home.pointerCursor.package = pkgs.rose-pine-cursor;
  home.pointerCursor.name = "BreezeX-RosePineDawn-Linux";
  home.pointerCursor.size = 24;
  # configure dconf to prefer dark-theme
  dconf.settings = {
    "org/gnome/desktop/interface" = {
       color-scheme = "prefer-dark";
     };
  };
}

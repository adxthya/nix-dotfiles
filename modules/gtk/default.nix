{ pkgs, ... }: {

  gtk = {
    enable = true;    
    theme.package = pkgs.adw-gtk3;
    theme.name = "adw-gtk3";
  };

}

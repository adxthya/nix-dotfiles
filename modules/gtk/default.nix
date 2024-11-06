{ pkgs, ... }: {

  gtk = {
    enable = true;    
    theme.package = (pkgs.graphite-gtk-theme.override {
      tweaks = [ "nord" ] ;
      colorVariants = [ "dark" ];
    });
    theme.name = "Graphite-Dark-nord";
  };

}

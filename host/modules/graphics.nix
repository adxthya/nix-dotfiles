{ config, pkgs, ... }:

{

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [ intel-media-sdk ]; # VA-API acceleration
  };

}

{ pkgs, ... }:

{
  users.users.adxthya = {
    isNormalUser = true;
    description = "adxthya";
    extraGroups = [ "networkmanager" "wheel" "users" ];
    packages = with pkgs; [ ];
  };
}

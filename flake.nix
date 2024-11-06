{
  description = "Home Manager configuration of adxthya";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {
      nixosConfigurations = {
        hope = nixpkgs.lib.nixosSystem{
          specialArgs = { inherit inputs system; };
          modules = [
            ./host
          ];
        };
      };
      homeConfigurations = {
        adxthya = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./users ];
        };
      };
    };
}

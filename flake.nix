{
  description = "Home Manager configuration of adxthya";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
      unstable = import nixpkgs-unstable { inherit system; config.allowUnfree = true; };
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
          extraSpecialArgs = { inherit inputs; inherit unstable; };
          inherit pkgs;
          modules = [ ./users ];
        };
      };
    };
}

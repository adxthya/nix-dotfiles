{
  description = "Home Manager configuration of adxthya";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    # Remove this when zen gets added to nixpkgs
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
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
          extraSpecialArgs = {inherit inputs;};
          inherit pkgs;
          modules = [ ./users ];
        };
      };
    };
}

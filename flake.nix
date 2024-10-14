{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flatpaks.url = "github:gmodena/nix-flatpak";
  };
  outputs = inputs@{ self, nixpkgs, flatpaks, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.macbook = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          flatpaks.nixosModules.nix-flatpak
          ./configuration.nix
        ];
      };
    };
  }

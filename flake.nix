{
  description = "Celso NixOS ISO builds";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.mllse =
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./mllse/iso.nix
        ];
      };

    # Build target
    packages.${system}.mllse =
      self.nixosConfigurations.mllse.config.system.build.isoImage;
  };
}

{
  description = "NixOS ISO for MLLSE Mini PC";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs }:
let
    system = "x86_64-linux";
  in {
    nixosConfigurations.mllse =
      import ./mllse/iso.nix { inherit nixpkgs; };

    # Build target
    packages.${system}.mllse =
      self.nixosConfigurations.mllse.config.system.build.isoImage;
  };
}

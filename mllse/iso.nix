{ nixpkgs }:

nixpkgs.lib.nixosSystem {
  system = "x86_64-linux";
  modules = [
    nixpkgs.nixosModules.installer-cd-minimal
    ./configuration.nix
  ];
}

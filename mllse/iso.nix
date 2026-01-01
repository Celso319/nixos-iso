{ config, pkgs, ... }:

{
  imports = [
    # Base installer
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>

    # Hardware module
    ../../modules/hardware/yt6801.nix
  ];

  # Kernel pin (must match yt6801 availability)
  boot.kernelPackages = pkgs.linuxPackages_6_6;
}

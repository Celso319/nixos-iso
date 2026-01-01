{ config, pkgs, modulesPath, ... }:

{
  imports = [
    # Base installer
    "${modulesPath}/installer/cd-dvd/installation-cd-minimal.nix"

  ];

  # Kernel pin (must match yt6801 availability)
  boot.kernelPackages = pkgs.linuxPackages_6_6;
}

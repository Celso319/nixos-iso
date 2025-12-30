{ config, pkgs, ... }:

{
  boot.kernelModules = [ "yt6801" ];

  # If out-of-tree:
  # boot.extraModulePackages = [
  #   config.boot.kernelPackages.yt6801
  # ];

  system.stateVersion = "25.11";
}

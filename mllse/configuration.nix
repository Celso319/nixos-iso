{ config, pkgs, ... }:

{

  # SHIP THE MODULE INTO THE ISO
  boot.extraModulePackages = [
    config.boot.kernelPackages.yt6801
  ];

  # LOAD IT
  boot.kernelModules = [ "yt6801" ];

  # MAKE IT AVAILABLE DURING INSTALLER BOOT
  boot.initrd.availableKernelModules = [ "yt6801" ];

  # Firmware
  hardware.enableRedistributableFirmware = true;
}

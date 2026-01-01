{ config, pkgs, ... }:

{
  # PIN THE KERNEL (choose one that yt6801 exists for)
  # boot.kernelPackages = pkgs.linuxPackages_6_6;

  # 1. Extend the kernel packages to include the out-of-tree module
  boot.kernelPackages = pkgs.linuxPackages_6_6.extend (self: super: {
    yt6801 = super.yt6801.overrideAttrs (oldAttrs: {
      # This ensures the module isn't marked as 'broken' or skipped
      meta = oldAttrs.meta // { broken = false; };
    });
    
  });

  isoImage.storeContents = [
    config.boot.kernelPackages.yt6801
  ];

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

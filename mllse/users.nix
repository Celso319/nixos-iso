#{ config, pkgs, ... }:

{
  # Enable passwordless sudo
  #security.sudo.wheelNeedsPassword = false;

  # Set a password for the 'nixos' user (or leave empty for no password)
  #users.users.nixos = {
  # isNormalUser = true;
  #  extraGroups = [ "wheel" "networkmanager" "video" ];
    # This allows you to login by just pressing enter
  #  initialPassword = ""; 
  #};

  # OR: Enable Autologin on the TTY (Best for installers)
  #services.getty.autologinUser = "nixos";
}
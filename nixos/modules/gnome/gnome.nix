{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nautilus
    polkit_gnome
    seahorse
  ];
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  services.gnome = {
    tinysparql.enable = true;
    localsearch.enable = true;
    sushi.enable = true;
    gnome-keyring.enable = true;
  };
  programs = {
    gnome-disks.enable = true;
  };
}

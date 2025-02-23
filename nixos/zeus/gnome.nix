{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nautilus
  ];
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
}

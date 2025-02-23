{pkgs, ...}: {
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
  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = ["graphical-session.target"];
      wants = ["graphical-session.target"];
      after = ["graphical-session.target"];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "always";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
}

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
    # desktopManager.gnome.enable = true;
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

  systemd.services.copyGdmMonitorsXml = {
    description = "Copy monitors.xml to GDM config";
    after = [
      "network.target"
      "systemd-user-sessions.service"
      "display-manager.service"
    ];

    serviceConfig = {
      ExecStart = "${pkgs.bash}/bin/bash -c 'echo \"Running copyGdmMonitorsXml service\" && mkdir -p /run/gdm/.config && echo \"Created /run/gdm/.config directory\" && [ \"/home/martin/.config/monitors.xml\" -ef \"/run/gdm/.config/monitors.xml\" ] || cp /home/martin/.config/monitors.xml /run/gdm/.config/monitors.xml && echo \"Copied monitors.xml to /run/gdm/.config/monitors.xml\" && chown gdm:gdm /run/gdm/.config/monitors.xml && echo \"Changed ownership of monitors.xml to gdm\"'";
      Type = "oneshot";
    };

    wantedBy = [ "multi-user.target" ];
  };
}

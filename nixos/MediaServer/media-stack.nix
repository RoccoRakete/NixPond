{...}: let
  cfg_dir = "/home/martin/.config/nixcfg/nixos/MediaServer/config";
in {
  services.sonarr = {
    enable = true;
    openFirewall = true;
    user = "martin";
    dataDir = "${cfg_dir}/sonarr/NzbDrone/";
  };
  services.radarr = {
    enable = true;
    openFirewall = true;
    user = "martin";
    dataDir = "${cfg_dir}/radarr/Radarr/";
  };
  services.sabnzbd = {
    enable = true;
    openFirewall = true;
    user = "martin";
    configFile = "${cfg_dir}/sabnzbd/sabnzbd.ini";
  };
  services.jellyseerr = {
    enable = true;
    openFirewall = true;
    # configDir = "${cfg_dir}/jellyseerr/data/config";
  };
}

{ ... }:
let
  cfg_dir = "/home/martin/MediaServer/config";
in
{
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
  services.lidarr = {
    enable = true;
    openFirewall = true;
    user = "martin";
    dataDir = "${cfg_dir}/lidarr/Lidarr/";
  };
  services.headphones = {
    enable = true;
    user = "martin";
    host = "0.0.0.0";
    dataDir = "${cfg_dir}/headphones/Headphones";
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

{ pkgs, config, ... }:
{
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud31;
    autoUpdateApps.enable = true;
    hostName = "nixcloud.mscloud.uk";
    database.createLocally = true;
    https = true;
    configureRedis = true;
    # ensureUsers = {
    #   martin = {
    #     email = "m.schaumann@mscloud.uk";
    #     passwordFile = "/etc/nextcloud-user-pass";
    #   };
    # };
    extraApps = {
      inherit (config.services.nextcloud.package.packages.apps)
        news
        mail
        contacts
        calendar
        tasks
        twofactor_webauthn
        ;
      # twofactor_totp = pkgs.fetchNextcloudApp {
      #   url = "https://github.com/pulsejet/memories/releases/download/v6.2.2/memories.tar.gz";
      #   hash = "sha256-Xr1SRSmXo2r8yOGuoMyoXhD0oPVm/0/ISHlmNZpJYsg=";
      #   license = "agpl3Only";
      # };
    };
    extraAppsEnable = true;
    caching = {
      redis = true;
      memcached = true;
    };
    maxUploadSize = "32G";
    config = {
      dbtype = "mysql";
      adminpassFile = "/etc/nextcloud-admin-pass";
    };
    settings = {
      default_phone_region = "DE";
      mail_smtptimeout = "30";
      log_type = "file";
      trusted_domains = [
        "10.7.2.66"
        "nixcloud.mscloud.uk"
      ];
      trusted_proxies = [ "10.7.2.53" ];
      maintenance_window_start = "=> 1";
      enabledPreviewProviders = [
        "OC\\Preview\\BMP"
        "OC\\Preview\\GIF"
        "OC\\Preview\\JPEG"
        "OC\\Preview\\Krita"
        "OC\\Preview\\MarkDown"
        "OC\\Preview\\MP3"
        "OC\\Preview\\OpenDocument"
        "OC\\Preview\\PNG"
        "OC\\Preview\\TXT"
        "OC\\Preview\\XBitmap"
        "OC\\Preview\\HEIC"
      ];
    };
    phpOptions = {
      "opcache.interned_strings_buffer" = "30";
    };
  };

  networking.firewall.allowedTCPPorts = [
    80
    443
  ];
}

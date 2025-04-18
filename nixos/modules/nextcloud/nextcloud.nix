{ pkgs, ... }:
{
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud31;
    hostName = "NextCloud";
    config = {
      adminpassFile = "/etc/nextcloud-admin-pass";
      dbtype = "mysql";
    };
  };
}

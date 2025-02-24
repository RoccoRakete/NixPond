{...}: {
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        ignore_dbus_inhibit = false; # whether to ignore dbus-sent idle-inhibit requests (used by e.g. firefox or steam)
        ignore_systemd_inhibit = false; # whether to ignore systemd-inhibit --what=idle inhibitors
      };

      listener = [
        {
          timeout = 300;
          on-timeout = "~/.config/nixcfg/home-manager/hyprland/scripts/brightness off";
          on-resume = "~/.config/nixcfg/home-manager/hyprland/scripts/brightness on";
        }
        {
          timeout = 600;
          on-timeout = "hyprlock -q";
        }
        {
          timeout = 900;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };
}

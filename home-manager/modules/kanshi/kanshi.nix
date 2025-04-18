{ ... }:
{
  services.kanshi = {
    enable = true;
    systemdTarget = "hyprland-session.target";
    profiles = {
      home_TV = {
        outputs = [
          {
            criteria = "LG Electronics LG TV SSCR2 0x01010101";
            mode = "2560x1440@120Hz";
            adaptiveSync = true;
          }
          {
            criteria = "eDP-1";
            status = "disable";
          }
        ];
      };
      home_office = {
        outputs = [
          {
            criteria = "AOC Q27B3MA 17ZQ7HA002194";
            mode = "2560x1440@75Hz";
            position = "1920,-900";
          }
          {
            criteria = "eDP-1";
            status = "disable";
          }
        ];
      };
      undocked = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "enable";
          }
        ];
      };
    };
  };
}

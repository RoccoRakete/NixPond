{ ... }:
{
  services.kanshi = {
    enable = true;
    profiles = {
      home_TV = {
        outputs = [
          {
            criteria = "LG Electronics LG TV SSCR2 0x01010101";
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

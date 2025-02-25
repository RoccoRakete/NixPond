{...}: {
  services.kanshi = {
    enable = true;
    profiles = {
      home_office = {
        outputs = [
          {
            criteria = "AOC Q27B3MA 17ZQ7HA002194";
          }
          {
            transform = "disable";
            criteria = "eDP-1";
          }
        ];
      };
    };
  };
}

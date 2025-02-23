{...}: {
  imports = [
  ];
  wayland.windowManager.hyprland = {
    settings = {
      monitor = [
        "eDP-1    , prefered       , 0x0       , 1" # Internal Display
        "HDMI-A-1 , 2560x1440@75   , 1920x-900 , 1" # Home Office
        #"HDMI-A-1 , 3840x2160@60   , 0x-1200   , 1.5"                     # TV
        #"HDMI-A-1 , 3840x2160@120  , 0x-1200   , 1.5"                     # TV
        #"eDP-1    , prefered       , 0x0       , 1 , mirror   , HDMI-A-1" # Mirror the connected output
        #"HDMI-A-1 , preffered      , 1920x0    , 1"                       # Monitor left
        #"HDMI-A-1 , preffered      , 0x1200    , 1"                       # Monitor bottom
        #"HDMI-A-1 , preffered      , 0x-1440   , 1"                       # Monitor top
      ];
    };
  };
}

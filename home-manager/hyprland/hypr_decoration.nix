{...}: {
  imports = [
  ];
  wayland.windowManager.hyprland = {
    settings = {
      # See https://wiki.hyprland.org/Configuring/Variables/ for more
      general = {
        "gaps_in" = "3";
        "gaps_out" = "7";
        "border_size" = "2";
        "col.active_border" = "rgba(48688Bff) rgba(B77DA2ff) 45deg";
        "col.inactive_border" = "rgba(595959ff)";
        "layout" = "master";
        "resize_on_border" = "true";
        "allow_tearing" = "true";
      };

      # # See https://wiki.hyprland.org/Configuring/Variables/ for more
      decoration = {
        # rounding
        "rounding" = "10";
        "dim_inactive" = "true";
        "dim_strength" = "0.2";

        blur = {
          "enabled" = "false";
          "brightness" = "1.0";
          "contrast" = "1.0";
          "noise" = "2.0e-2";
          "passes" = "3";
          "popups" = "true";
          "size" = "10";
          "new_optimizations" = "true";
        };

        shadow = {
          # shadow
          "enabled" = "true";
          "ignore_window" = "true";
          "offset" = "0 2";
          "range" = "30";
          "render_power" = "3";
          "color" = " rgba(00000055)";
        };
      };

      animations = {
        "enabled" = "true";
        bezier = [
          "fluent_decel  , 0    , 0.2  , 0.4  , 1"
          "easeOutCirc   , 0    , 0.55 , 0.45 , 1"
          "easeOutCubic  , 0.33 , 1    , 0.68 , 1"
          "easeinoutsine , 0.37 , 0    , 0.63 , 1"
        ];

        animation = [
          # Windows
          "windowsIn   , 1 , 3 , fluent_decel  ," # window open
          "windowsOut  , 1 , 5 , fluent_decel  ," # window close.
          "windowsMove , 1 , 2 , easeinoutsine , slide" # everything in between, moving, dragging, resizing.

          "fadeIn      , 1 , 3   , easeOutCubic" # fade in (open) -> layers and windows
          "fadeOut     , 1 , 1.7 , easeOutCubic" # fade out (close) -> layers and windows
          "fadeSwitch  , 0 , 1   , easeOutCirc" # fade on changing activewindow and its opacity
          "fadeShadow  , 1 , 10  , easeOutCirc" # fade on changing activewindow for shadows
          "fadeDim     , 1 , 4   , fluent_decel" # the easing of the dimming of inactive windows
          "border      , 1 , 2.7 , easeOutCirc" # for animating the border's color switch speed
          "borderangle , 1 , 30  , fluent_decel , once" # for animating the border's gradient angle - styles: once (default), loop
          "workspaces  , 1 , 2   , easeOutCubic"
        ];
      };

      # Layerrules
      layerrule = [
        "blur                 , waybar"
        "noanim               , wofi"
        "dimaround            , wofi"
        "animation fadeDim    , wofi"
        "animation workspaces , swaync-control-center"
      ];
    };
  };
}

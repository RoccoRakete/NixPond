{ ... }:
{
  programs.hyprlock = {
    enable = true;
    extraConfig = ''
          general {
          disable_loading_bar = true
          hide_cursor         = true
      }

      background {
          path        = screenshot
          blur_passes = 3
          blur_size   = 3
          brightness  = 0.3
      }

      label {
          monitor =
          text = cmd[update:1000] echo "<span>$(date '+%A, %d. %B')</span>"
          # text = cmd[update:1000] echo "<span foreground='##eeeeee'>$(date '+%A, %d %B')</span>"
          color = rgba(250, 250, 250, 0.8)
          font_size = 16
          font_family = SFRounded Nerd Font bold
          shadow_passes = 3
          position = 0, -120
          halign = center
          valign = top
      }

      label {
          monitor =
          text = cmd[update:1000] echo "<span>$(date '+%H:%M')</span>"
          font_size = 75
          font_family = SFRounded Nerd Font bold
          shadow_passes = 3

          position = 0, -135
          halign = center
          valign = top
      }

      image {
          monitor =
          path = ~/.config/nixcfg/home-manager/modules/backgrounds/face.png
          size = 130 # lesser side if not 1:1 ratio
          rounding = -1 # negative values mean circle
          border_size = 0
          # border_color = rgb(221, 221, 221)
          rotate = 0 # degrees, counter-clockwise
          reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
          reload_cmd =

          position = 0, -50
          halign = center
          valign = center
      }

      label {
          monitor =
          text = $USER
          font_size = 18
          font_family = SFRounded Nerd Font
          shadow_passes = 3

          position = 0, -150
          halign = center
          valign = center
      }

      # INPUT FIELD
      input-field {
          monitor =
          size = 250, 40
          outline_thickness = 2
          dots_size = 0.2 # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.2 # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true
          outer_color = rgba(0, 0, 0, 0)
          inner_color = rgba(100, 114, 125, 0.4)
          font_color = rgb(200, 200, 200)
          fade_on_empty = false
          font_family = SFRounded Nerd Font
          placeholder_text = <span foreground="##ffffff99">Use me!</span>
          hide_input = false
          position = 0, -210
          halign = center
          valign = center
      }

      image {
          monitor =
          path = ~/.config/nixcfg/home-manager/modules/backgrounds/hl.png
          size = 60 # lesser side if not 1:1 ratio
          rounding = -1 # negative values mean circle
          border_size = 0
          # border_color = rgb(221, 221, 221)
          rotate = 0 # degrees, counter-clockwise
          reload_time = -1 # seconds between reloading, 0 to reload with SIGUSR2
          reload_cmd =

          position = 0, 20
          halign = center
          valign = bottom
      }
    '';
  };
}

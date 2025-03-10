{ ... }:
{
  imports = [
  ];
  wayland.windowManager.hyprland = {
    settings = {
      # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
      general = {
        "allow_tearing" = "true";
      };

      input = {
        "kb_layout" = "de";
        "kb_variant" = "";
        "kb_model" = "";
        "kb_options" = "";
        "kb_rules" = "";
        "follow_mouse" = "1";
        "natural_scroll" = "false";
        "numlock_by_default" = "true";

        touchpad = {
          "natural_scroll" = "true";
          "scroll_factor" = "0.2";
          "tap-to-click" = "false";
          "tap_button_map" = "l";
          "clickfinger_behavior" = "true";
        };
      };

      device = {
        "name" = "logitech-wireless-mouse-mx-master-2s-1";
        "sensitivity" = "1.0";
        "accel_profile" = "flat";
      };

      gestures = {
        "workspace_swipe" = "true";
        "workspace_swipe_fingers" = "3";
        "workspace_swipe_distance" = "1000";
        "workspace_swipe_min_speed_to_force" = "5";
        "workspace_swipe_use_r" = "true";
      };

      # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
      dwindle = {
        "pseudotile" = "true";
        "preserve_split" = "true"; # you probably want this
        "force_split" = "2";
        "smart_split" = "false";
        "smart_resizing" = "true";
      };

      # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
      master = {
        "allow_small_split" = "false";
        "mfact" = "0.5";
        "new_on_top" = "true";
      };

      # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more

      misc = {
        "vfr" = "true";
        "vrr" = "0";
        "animate_manual_resizes" = "false";
        "render_ahead_of_time" = "false";
        "disable_hyprland_logo" = "true";
        "focus_on_activate" = "true";
        "mouse_move_enables_dpms" = "false";
        "key_press_enables_dpms" = "false";
      };

      render = {
        "direct_scanout" = "true";
      };

      cursor = {
        "enable_hyprcursor" = "true";
      };

      debug = {
        "overlay" = "false";
      };

      # Variables
      env = [
        "XCURSOR_THEME                       , Bibata-Modern-Classic"
        "XCURSOR_SIZE                        , 24"
      ];
      # "env" = "export                                TERM=xterm";
      # "env" = "XCURSOR_THEME                       , Bibata-Modern-Classic";
      # "env" = "XCURSOR_SIZE                        , 24";
      # # env = WLR_DRM_NO_ATOMIC                   , 1
      # "env" = "GDK_BACKEND                         , wayland,x11,*";
      # "env" = "QT_QPA_PLATFORM                     , wayland;xcb";
      # "env" = "SDL_VIDEODRIVER                     , wayland";
      # "env" = "CLUTTER_BACKEND                     , wayland";
      # "env" = "XDG_CURRENT_DESKTOP                 , Hyprland";
      # "env" = "XDG_SESSION_TYPE                    , wayland";
      # "env" = "XDG_SESSION_DESKTOP                 , Hyprland";
      # "env" = "QT_AUTO_SCREEN_SCALE_FACTOR         , 1";
      # "env" = "QT_QPA_PLATFORM                     , wayland;xcb";
      # "env" = "QT_WAYLAND_DISABLE_WINDOWDECORATION , 1";
      # "env" = "QT_QPA_PLATFORMTHEME                , qt5ct";
      # "env" = "HYPRCURSOR_THEME                    , Bibata-Modern-Classic";
      # "env" = "HYPRCURSOR_SIZE                     , 24";
    };
  };
}

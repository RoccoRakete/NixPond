{...}: {
  imports = [
    ./hypr_vars.nix
  ];
  wayland.windowManager.hyprland = {
    settings = {
      bind =
        [
          # Apps
          "$mainMod         , return            , exec             , $Term"
          "$mainMod SHIFT   , return            , exec             , $Term --title kitty_float"
          "$mainMod         , V                 , exec             , $Term --class floating -e zsh -c 'clipse'"
          "$mainMod         , E                 , exec             , $FileManager"
          "$mainMod         , B                 , exec             , $browser"
          "$mainMod         , C                 , exec             , $editor"
          "CONTROL SHIFT    , Escape            , exec             , missioncenter"
          "                 , XF86Keyboard      , exec             , gnome-calculator"
          "$mainMod         , D                 , exec             , vesktop"
          "$mainMod         , O                 , exec             , obsidian"

          # Shell
          "$mainMod         , SPACE             , exec             , $launcher"
          "$mainMod CONTROL , P                 , exec             , syspower"
          #"bind = $mainMod         , R                 , exec             , ~/.config/waybar/launch.sh"

          #"bind = $mainMod         , R                 , exec             , launch-waybar"
          "$mainMod         , R                 , exec             , ~/.config/hypr/scripts/launch_hyprpanel.sh"
          "$mainMod         , X                 , exec             , hyprctl kill"
          "$mainMod         , F                 , fullscreen"

          # NixOS
          "$mainMod Alt_L   , R                 , exec             , hyprctl reload"

          # System
          "$mainMod         , L                 , exec             , $LockScreen"
          "$mainMod SHIFT   , S                 , exec             , $ScreenArea"
          "                 , Print             , exec             , $ScreenShot"
          "$mainMod Alt_L   , M                 , exec             , ~/.config/hypr/scripts/w2m.sh"
          "$mainMod SHIFT   , P                 , exec             , ~/.config/hypr/scripts/power-profile-switcher.sh"
          "$mainMod SHIFT   , C                 , exec             , hyprpicker -a"

          # Window management
          "$mainMod         , Q                 , killactive       ,"
          "$mainMod         , T                 , togglefloating   ,"
          "$mainMod         , P                 , pseudo           , # dwindle"
          "$mainMod         , J                 , togglesplit      , # dwindle"
          "ALT              , Tab               , cyclenext        ,"
          "$mainMod         , Tab               , bringactivetotop ,"

          # Move focus with mainMod + arrow keys
          "$mainMod , left  , movefocus, l"
          "$mainMod , right , movefocus, r"
          "$mainMod , up    , movefocus, u"
          "$mainMod , down  , movefocus, d"

          # Resize windows with mainMod CTRL + arrowkeys
          "$mainMod CONTROL , Right , resizeactive , 30  0"
          "$mainMod CONTROL , Left  , resizeactive , -30 0"
          "$mainMod CONTROL , Up    , resizeactive , 0   -30"
          "$mainMod CONTROL , Down  , resizeactive , 0   30"

          # Move active window in workspace
          "$mainMod ALT , left  , movewindow, l"
          "$mainMod ALT , right , movewindow, r"
          "$mainMod ALT , up    , movewindow, u"
          "$mainMod ALT , down  , movewindow, d"

          # Move active window in workspace
          "$mainMod ALT , left  , movewindow, l"
          "$mainMod ALT , right , movewindow, r"
          "$mainMod ALT , up    , movewindow, u"
          "$mainMod ALT , down  , movewindow, d"

          # Workspace 10
          "$mainMod , 0     , workspace , 10"
          "$mainMod SHIFT , 0 , movetoworkspace , 10"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (
              i: let
                ws = i + 1;
              in [
                "$mainMod, code:1${toString i}, workspace, ${toString ws}"
                "$mainMod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mainMod , mouse:272 , movewindow"
        "$mainMod , mouse:273 , resizewindow"
      ];
      bindle = [
        ", XF86AudioRaiseVolume  , exec , volumectl -u up"
        ", XF86AudioLowerVolume  , exec , volumectl -u down"
        ", XF86AudioMute         , exec , volumectl toggle-mute"
        ", XF86MonBrightnessUp   , exec , lightctl up"
        ", XF86MonBrightnessDown , exec , lightctl down"
      ];
    };
  };
}

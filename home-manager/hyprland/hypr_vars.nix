{...}: {
  wayland.windowManager.hyprland = {
    settings = {
      "$mainMod" = "SUPER";
      "$Term" = "kitty";
      "$FileManager" = "nautilus";
      "$browser" = "zen";
      "$editor" = "kitty -o tab_bar_min_tabs=99 -o tab_bar_style=hidden nvim";
      # $editor"      = ghostty -e nvim
      "$launcher" = "wofi";
      "$LockScreen" = "hyprlock -q";
      "$ScreenArea" = "grimblast --notify copysave area ~/Pictures/Screenshots/$(date +'Screenshot_%d-%m-%y_%H-%M.png')";
      "$ScreenShot" = "grimblast --notify copysave output ~/Pictures/Screenshots/$(date +'Screenshot_%d-%m-%y_%H-%M.png')";
    };
  };
}

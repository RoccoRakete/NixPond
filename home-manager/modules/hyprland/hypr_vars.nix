{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      "$mainMod" = "SUPER";
      "$Term" = "kitty";
      "$FileManager" = "nemo";
      "$browser" = "zen";
      "$editor" = "kitty -o tab_bar_min_tabs=99 -o tab_bar_style=hidden vim";
      # $editor"      = ghostty -e nvim
      "$launcher" = "anyrun";
      "$LockScreen" = "hyprlock -q";
      "$ScreenArea" =
        "grimblast --notify copysave area ~/Pictures/Screenshots/$(date +'Screenshot_%d-%m-%y_%H-%M.png')";
      "$ScreenShot" =
        "grimblast --notify copysave output ~/Pictures/Screenshots/$(date +'Screenshot_%d-%m-%y_%H-%M.png')";
    };
  };
}

{...}: {
  imports = [
    ./hypr_vars.nix
    ./hypr_keybinds.nix
    ./hypr_decoration.nix
    ./hypr_misc.nix
    ./hypr_monitor.nix
    ./hypr_autostart.nix
    ./hyprlock.nix
    ./hypridle.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
    };
  };
}

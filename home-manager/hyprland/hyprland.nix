{...}: {
  imports = [
    ./hypr_vars.nix
    ./hypr_keybinds.nix
    ./hypr_decoration.nix
    ./hypr_misc.nix
    ./hypr_monitor.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
    };
  };
}

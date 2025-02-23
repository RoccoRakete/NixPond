{...}: {
  imports = [
    ./hypr_vars.nix
    ./hypr_keybinds.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
    };
  };
}

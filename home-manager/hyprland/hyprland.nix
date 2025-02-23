{...}: {
  imports = [
    ./hypr_vars.nix
    ./hypr_keybinds.nix
    ./hypr_decoration.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
    };
  };
}

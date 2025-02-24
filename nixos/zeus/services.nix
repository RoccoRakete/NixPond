{...}: {
  services = {
    # Enable the X11 windowing system.
    sserver.enable = true;
    # Configure keymap in X11
    xkb = {
      layout = "de";
      variant = "";
    };
    upower.enable = true;
  };
}

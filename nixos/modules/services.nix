{lib, ...}: {
  services = {
    # Enable the X11 windowing system.
    xserver.enable = true;
    # Configure keymap in X11
    xserver.xkb = {
      layout = "de";
      variant = "";
    };
    upower.enable = true;
    fwupd.enable = true;
    gvfs.enable = true;
    # ollama.enable = false;
    # stirling-pdf.enable = true;
    power-profiles-daemon.enable = true;
    logind = {
      lidSwitchDocked = "ignore";
      lidSwitch = "ignore";
      lidSwitchExternalPower = "ignore";
    };
    upower = {
      ignoreLid = lib.mkDefault true;
    };
  };
}

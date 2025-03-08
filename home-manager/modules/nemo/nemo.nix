{ pkgs, ... }:
{
  home.packages = with pkgs; [ nemo-with-extensions ];
  xdg.desktopEntries.nemo = {
    name = "Nemo";
    icon = "org.gnome.Nautilus";
    exec = "${pkgs.nemo-with-extensions}/bin/nemo";
  };
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = [ "nemo.desktop" ];
      "application/x-gnome-saved-search" = [ "nemo.desktop" ];
      "x-scheme-handler/http" = [ "userapp-Zen-58D722.desktop" ];
      "x-scheme-handler/https" = [ "userapp-Zen-58D722.desktop" ];
      "x-scheme-handler/chrome" = [ "userapp-Zen-58D722.desktop" ];
      "text/html" = [ "userapp-Zen-58D722.desktop" ];
      "application/x-extension-htm" = [ "userapp-Zen-58D722.desktop" ];
      "application/x-extension-html" = [ "userapp-Zen-58D722.desktop" ];
      "application/x-extension-shtml" = [ "userapp-Zen-58D722.desktop" ];
      "application/xhtml+xml" = [ "userapp-Zen-58D722.desktop" ];
      "application/x-extension-xhtml" = [ "userapp-Zen-58D722.desktop" ];
      "application/x-extension-xht" = [ "userapp-Zen-58D722.desktop" ];
    };
  };
  dconf = {
    settings = {
      "org/cinnamon/desktop/applications/terminal" = {
        exec = "kitty";
      };
    };
  };
}

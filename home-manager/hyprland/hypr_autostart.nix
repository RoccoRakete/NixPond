{...}: {
  wayland.windowManager.hyprland.extraConfig = ''
    exec      = hyprpanel
    exec      = nm-applet
    exec-once = wl-paste -p --watch clipman store -P --histpath="~/.local/share/clipman-primary.json"
    exec-once = wl-clip-persist --clipboard regular --write-timeout 1000
    exec-once = nextcloud --background
    exec-once = blueman-applet
    exec      = pika-backup-monitor


  '';
}

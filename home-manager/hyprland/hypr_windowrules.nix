{...}: {
  wayland.windowManager.hyprland = {
    settings = {
      windowrulev2 = [
        "float        , class:(floating)"
        "size 60% 60% , class:(floating)"

        "float        , class:(nm-connection-editor)"
        "center       , class:(nm-connection-editor)"

        "float        , class:(betaflight-configurator)"
        "center       , class:(betaflight-configurator)"
        "size 80% 80% , class:(betaflight-configurator)"

        "float        , class:(org.pulseaudio.pavucontrol)"
        "center       , class:(org.pulseaudio.pavucontrol)"
        "size 40% 60% , class:(org.pulseaudio.pavucontrol)"

        "float        , class:(io.missioncenter.MissionCenter)"
        "size 70% 70% , class:(io.missioncenter.MissionCenter)"
        "center       , class:(io.missioncenter.MissionCenter)"

        "float        , class:(org.gnome.Nautilus)"
        "size 70% 70% , class:(org.gnome.Nautilus)"
        "center       , class:(org.gnome.Nautilus)"

        "float        , title:(Open Folder)"
        "float        , title:(Open File)"
        "center       , class:(Open Folder)"
        "center       , class:(Open File)"

        "float        , class:(com.nextcloud.desktopclient.nextcloud)"
        "center       , class:(com.nextcloud.desktopclient.nextcloud)"

        "float        , class:(org.gnome.Loupe)"
        "size 70% 80% , class:(org.gnome.Loupe)"
        "center       , class:(org.gnome.Loupe)"

        "float        , class:(blueman-manager)"
        "size 60% 60% , class:(blueman-manager)"
        "center       , class:(blueman-manager)"

        "float        , class:(org.gnome.World.PikaBackup)"
        "size 40% 70% , class:(org.gnome.World.PikaBackup)"
        "center       , class:(org.gnome.World.PikaBackup)"
      ];
    };
  };
}

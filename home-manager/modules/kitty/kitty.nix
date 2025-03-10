{...}: {
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    settings = {
      window_padding_width = 5;
      tab_bar_min_tabs = 1;
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
      hide_window_decorations = "yes";
      enable_audio_bell = "no";

      "foreground" = "#bdc3df";
      "background" = "#0e0e0e";
      "selection_foreground" = "#101017";
      "selection_background" = "#bdc3df";

      "cursor" = "#bdc3df";
      "cursor_text_color" = "#101017";
      "url_color" = "#85b6ff";

      "tab_bar_background" = "#0e0e0e";
      "active_tab_foreground" = "#bdc3df";
      "active_tab_background" = "#33333f";
      "inactive_tab_foreground" = "#dedeff";
      "inactive_tab_background" = "#101017";

      "color0" = "#33333f";
      "color1" = "#ff568e";
      "color2" = "#64de83";
      "color3" = "#efff73";
      "color4" = "#73a9ff";
      "color5" = "#946ff7";
      "color6" = "#62c6da";
      "color7" = "#dedeff";
      "color8" = " #43435a";
      "color9" = " #ff69a2";
      "color10" = "#73de8a";
      "color11" = " #f3ff85";
      "color12" = " #85b6ff";
      "color13" = " #a481f7";
      "color14" = " #71c2d9";
      "color15" = " #ebebff";
    };
  };
}

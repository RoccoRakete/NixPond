{...}: {
  programs.wofi = {
    enable = true;
    settings = {
      hide_scroll = true;
      show = "drun";
      width = "30%";
      lines = "8";
      line_wrap = "word";
      term = "kitty";
      allow_markup = true;
      always_parse_args = true;
      show_all = true;
      print_command = true;
      layer = "top";
      allow_images = true;
      sort_order = "default";
      gtk_dark = true;
      image_size = "20";
      display_generic = false;
      location = "center";
      key_expand = "Tab";
      insensitive = true;
      dynamic_lines = false;
    };
    style = ''
       * {
        font-weight: bolder;
        font-size: 16pt;
        color: #ffffff;
        background: transparent;
      }

      #window {
        background: #171717;
        margin: auto;
        padding: 10px;
        border-radius: 20px;
        border: 3px solid #3584e4;
      }

      #input {
        background-color: #3d3846;
        padding: 5px;
        padding-left: 10px;
        margin-bottom: 10px;
        border-radius: 15px;
      }

      #outer-box {
        padding: 20px;
      }

      #img {
        margin-right: 6px;
      }

      #entry {
        padding: 10px;
      }

      #entry:selected {
        background-color: #3d3846;
        border: 0px transparent;
      }

      #text {
        margin: 2px;
      }
    '';
  };
}

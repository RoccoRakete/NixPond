{ ... }:
{
  programs.zed-editor = {
    enable = true;
    # package = pkgs.zed-editor-fhs;

    extensions = [
      "nix"
      "dockerfile"
      "docker-compose"
      "toml"
      "ini"
      "pylsp"
      "python-refactoring"
    ];

    userSettings = {
      buffer_font_family = "JetBrainsMono Nerd Font";
      buffer_font_weight = 500;
      buffer_font_size = 16;
      font_family = "SFRounded Nerd Font";
      ui_font_size = 16;

      theme = {
        mode = "dark";
        light = "One Light";
        dark = "Fleet Dark";
      };

      features = {
        copilot = false;
      };
      telemetry = {
        metrics = false;
      };
      vim_mode = true;
      format_on_save = "on";

      languages = {
        Nix = {
          language_servers = [
            "nil"
            "!nixd"
          ];
          formatter = {
            external = {
              command = "nixfmt";
            };
          };
        };
      };

      Rust = {
        language_servers = [
          "rust-analyzer"
        ];
        formatter = {
          external = {
            command = "rustfmt";
          };
        };
      };

      Python = {
        language_servers = [
          "pyright"
          "python-refactoring"
        ];
      };

    };
    userKeymaps = [
      {
        context = "ProjectPanel";
        bindings = {
          "ctrl-e" = "project_panel::ToggleFocus";
        };
      }
    ];
  };
}

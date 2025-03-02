{
  programs.nixvim.plugins.blink-cmp = {
    enable = true;
    settings = {
      appearance = {
        nerd_font_variant = "normal";
        use_nvim_cmp_as_default = true;
      };
      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
            semantic_token_resolution = {
              enabled = false;
            };
          };
        };
        documentation = {
          auto_show = true;
          window.border = "rounded";
        };
        menu = {
          border = "rounded";
        };
      };
      keymap = {
        preset = "default";
      };
      signature = {
        enabled = true;
      };
      sources = {
        cmdline = null;
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
          "markdown"
        ];
        providers = {
          buffer = {
            score_offset = -7;
          };
          lsp = {
            fallbacks = [ ];
          };
          markdown = {
            name = "RenderMarkdown";
            module = "render-markdown.integ.blink";
            fallbacks = [ "lsp" ];
          };
        };
      };
    };
  };
}

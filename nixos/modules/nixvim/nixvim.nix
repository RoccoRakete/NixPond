{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  imports = [
    inputs.nixvim.nixosModules.nixvim # Import the anyrun home-manager module
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/illuminate.nix
    ./plugins/indent-blankline.nix
    ./plugins/lazygit.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/luasnip.nix
    ./plugins/neotree.nix
    ./plugins/render-markdown.nix
    ./plugins/schemastore.nix
    ./plugins/startup.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/undotree.nix
    ./plugins/whichkey.nix
  ];

  programs.nixvim = {
    enable = true;
    vimAlias = true;
    globals.mapleader = " ";
    clipboard.providers.wl-copy.enable = true;

    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
        transparent_background = true;
      };
    };

    opts = {
      number = true;
      shiftwidth = 2;
      wildmenu = true;
      wildmode = "longest:full,full";
      # Disable swap file creation
      swapfile = false;
    };

    keymaps = [
      {
        key = "<leader>lf";
        action = "<cmd>lua require('conform').format({ lsp_fallback = true, async = false, timeout_ms = 500 })<CR>";

        options = {
          silent = true;
        };
      }
      {
        key = ".";
        action = ":";
      }
      {
        key = "<leader>bb";
        action = "<CMD>Telescope file_browser<NL>";
      }
      {
        key = "<leader>e";
        action = "<CMD>Neotree toggle filesystem float<NL>";
        options = {
          desc = "File Explorer";
        };
      }
      {
        key = "<leader>w";
        action = "<CMD>WhichKey<NL>";
        options = {
          desc = "WhichKey";
        };
      }
      {
        key = "<leader>md";
        action = "<CMD>:!inlyne %<NL>";
        options = {
          desc = "Open Markdown File";
        };
      }
      {
        key = "<Tab>";
        action = "<CMD>:bnext<NL>";
      }
      {
        key = "<leader>x";
        action = "<CMD>:bp <BAR> bd #<CR>";
        options = {
          desc = "Close Buffer";
        };
      }
    ];

    plugins = {
      leap.enable = true;
      sleuth.enable = true;
      oil.enable = true;
      nix.enable = true;
      fugitive.enable = true;
      gitignore.enable = false;
      noice.enable = true;
      mini.enable = true;
      web-devicons.enable = true;
      colorizer.enable = true;
      rustaceanvim = {
        enable = true;
        settings = {
          server = {
            # cmd = [
            #   "rustup"
            #   "run"
            #   "nightly"
            #   "rust-analyzer"
            # ];
            default_settings = {
              rust-analyzer = {
                check = {
                  command = "clippy";
                };
                inlayHints = {
                  lifetimeElisionHints = {
                    enable = "always";
                  };
                };
              };
            };
            standalone = true;
          };
        };
      };
      #airline = {
      #  enable = true;
      #  settings = {
      #    powerline = true;
      #    theme = "minimalist";
      #  };
      #};
    };

    extraPlugins = with pkgs.vimPlugins; [
      #distant-nvim
    ];

    extraConfigLua =
      ''if vim.g.neovide then''
      + "\n"
      + ''vim.keymap.set('n', '<C-S-s>', ':w<CR>') -- Save''
      + "\n"
      + ''vim.keymap.set('v', '<C-S-c>', '"+y') -- Copy''
      + "\n"
      + ''vim.keymap.set('n', '<C-S-v>', '"+P') -- Paste normal mode''
      + "\n"
      + ''vim.keymap.set('v', '<C-S-v>', '"+P') -- Paste visual mode''
      + "\n"
      + ''vim.keymap.set('c', '<C-S-v>', '<C-R>+') -- Paste command mode''
      + "\n"
      + ''vim.keymap.set('i', '<C-S-v>', '<ESC>l"+Pli') -- Paste insert mode''
      + "\n"
      + "end";
  };
}

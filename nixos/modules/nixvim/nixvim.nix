{ pkgs, lib, ... }:

{
  imports = [
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/illuminate.nix
    ./plugins/lazygit.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/luasnip.nix
    ./plugins/neotree.nix
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

    colorschemes.vscode = {
      enable = true;
      settings = {
        color_overrides = {
          vscBack = "#101010";
        };
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
        key = "<leader>t";
        action = "<CMD>Neotree<NL>";
      }
      {
        key = "<leader>w";
        action = "<CMD>WhichKey<NL>";
      }
      {
        key = "<Tab>";
        action = "<CMD>:bnext<NL>";
      }
      {
        key = "<leader>c";
        action = "<CMD>:bp | bd #<NL>";
      }
      {
        key = "<leader>c";
        action = "<CMD>:bp | bd #<NL>";
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
      #airline = {
      #  enable = true;
      #  settings = {
      #    powerline = true;
      #    theme = "minimalist";
      #  };
      #};
      #nvim-colorizer.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      #distant-nvim
    ];

    extraConfigLua =
      ''if vim.g.neovide then''
      + "\n"
      + ''vim.o.guifont = "Hurmit Nerd Font:h12"''
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

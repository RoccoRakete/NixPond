{ ... }:

{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        diagnostics = "nvim_lsp";
        mode = "buffers";

        close_icon = " ";
        buffer_close_icon = "󰱝 ";
        modified_icon = "󰔯 ";

        offsets = [
          {
            filetype = "neo-tree";
            text = "File Explorer";
            highlight = "Directory";
            text_align = "center";
          }
        ];
      };
    };
  };
}

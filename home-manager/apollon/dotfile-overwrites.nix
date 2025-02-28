{ config, ... }:

{
  # nvim
  home.file."${config.xdg.configHome}/nvim" = {
    source = ./cfg/nvim;
    recursive = true;
    enable = false;
    executable = true;
  };
}

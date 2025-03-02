{ config, ... }:

{
  # nvim
  home.file."${config.xdg.configHome}/inlyne" = {
    source = ../modules/inlyne/inlyne.toml;
    recursive = true;
    enable = false;
    executable = true;
  };
}

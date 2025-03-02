{ config, ... }:

{
  # nvim
  home.file."${config.xdg.configHome}/inlyne/inlyne.toml" = {
    source = ../modules/inlyne/inlyne.toml;
    recursive = true;
    enable = true;
    executable = true;
  };
}

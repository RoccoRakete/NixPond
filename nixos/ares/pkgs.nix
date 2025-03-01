{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # System
    gcc
    pulseaudio
    cifs-utils
    nodejs_23
    go
    unzip
    playerctl
    nil
    cargo
    wl-clip-persist
    wl-clipboard
    ripgrep
    gnome-control-center
    inputs.alejandra.packages.${system}.default
    inputs.nix-alien.packages.${system}.default

    # User
    vim
    betaflight-configurator
    brightnessctl
    super-slicer-beta
    fzf
    nerdfetch
    lutris
    nextcloud-client
    spotify
    pavucontrol
    networkmanagerapplet
    mission-center
    grimblast
    pika-backup
    nwg-look
    libreoffice-fresh
  ];

  # Install Nerd-Fonts
  fonts.packages =
    [ ]
    ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}

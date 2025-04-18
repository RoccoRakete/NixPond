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
    gnupg
    nodejs_23
    go
    unzip
    playerctl
    nil
    cargo
    rustc
    cargo
    rust-analyzer
    direnv
    jq
    libnotify
    # vscode.fhs
    # vscode
    rustup
    rustfmt
    nixfmt-rfc-style
    wl-clip-persist
    wl-clipboard
    ripgrep
    gnome-control-center
    inputs.alejandra.packages.${system}.default
    inputs.nix-alien.packages.${system}.default
    # inputs.powertray.packages.${system}

    # User
    vim
    libappindicator-gtk3
    libayatana-appindicator
    hyprpanel
    betaflight-configurator
    brightnessctl
    super-slicer-beta
    fzf
    obsidian
    nerdfetch
    lutris
    bitwarden
    nextcloud-client
    glab
    spotify
    pavucontrol
    baobab
    networkmanagerapplet
    mission-center
    grimblast
    pika-backup
    nwg-look
    libreoffice-fresh
    inlyne
    mangohud
  ];

  # Install Nerd-Fonts
  fonts.packages =
    [ ]
    ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}

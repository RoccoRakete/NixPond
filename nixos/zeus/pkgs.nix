{
  pkgs,
  lib,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    gcc
    brightnessctl
    pulseaudio
    cifs-utils
    nodejs_23
    go
    unzip
    fzf
    nil
    cargo
    wl-clip-persist
    wl-clipboard
    inputs.alejandra.packages.${system}.default
  ];

  # Install Nerd-Fonts
  fonts.packages = [] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}

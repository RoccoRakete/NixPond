{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wofi
    gcc
    cifs-utils
    nodejs_23
    go
    unzip
    fzf
    nil
    cargo
    inputs.alejandra.packages.${system}.default
  ];
}

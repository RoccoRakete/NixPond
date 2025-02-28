{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    gcc
    cifs-utils
    nodejs_23
    go
    nerdfetch
    unzip
    fzf
    nil
    cargo
    inputs.alejandra.packages.${system}.default
  ];
}

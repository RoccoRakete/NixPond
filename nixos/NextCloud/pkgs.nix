{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    nerdfetch
    unzip
    inputs.alejandra.packages.${system}.default
  ];
}

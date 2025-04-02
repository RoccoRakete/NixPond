{ inputs, ... }:
{
  imports = [
    inputs.plasma-manager.homeManagerModules.plasma-manager # Import the plasma-manager home-manager module
  ];
}

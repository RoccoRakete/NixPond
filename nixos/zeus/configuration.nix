{
  pkgs,
  inputs,
  outputs,
  lib,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../prgs/nh.nix
    ./pkgs.nix
    ./bluetooth.nix
    ./gnome.nix
    ./system.nix
    ./services.nix
    ./programms.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure console keymap
  console.keyMap = "de";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.martin = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "Martin";
    extraGroups = ["networkmanager" "wheel"];
  };

  fonts.packages = [] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs outputs;};
    users = {
      martin = import ../../home-manager/zeus/home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11"; # Did you read the comment?
}

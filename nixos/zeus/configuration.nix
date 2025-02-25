{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../prgs/nh.nix
    ../prgs/gaming.nix
    ./pkgs.nix
    ./bluetooth.nix
    ./gnome.nix
    ./system.nix
    ./services.nix
    ./programms.nix
    # ../../overlays
    inputs.home-manager.nixosModules.home-manager
  ];

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
    # Garbage Collector // Disabled because of "nh"!
    # gc = {
    #   automatic = true;
    #   dates = "daily";
    #   options = "--delete-older-than 7d";
    # };
  };

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
    extraGroups = [
      "video"
      "input"
      "networkmanager"
      "wheel"
      "dialout"
      "libvirtd"
      "podman"
      "docker"
    ];
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs outputs;};
    users = {
      martin = import ../../home-manager/zeus/home.nix;
    };
  };

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      allowUnfree = true;
    };
  };

  system.stateVersion = "24.11";
}

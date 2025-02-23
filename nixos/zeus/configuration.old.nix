{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./media-stack.nix
    ../prgs/nh.nix
    ./pkgs.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos_media"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

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

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "de";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.martin = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "martin";
    extraGroups = ["networkmanager" "wheel"];
  };

  programs.zsh.enable = true;

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs outputs;};
    users = {
      # Import your home-manager configuration
      martin = import ../../home-manager/MediaServer/home.nix;
    };
  };

  services.openssh = {
    enable = true;
  };

  services.qemuGuest.enable = true;

  networking = {
    interfaces.ens18 = {
      ipv4.addresses = [
        {
          address = "10.7.2.90";
          prefixLength = 24;
        }
      ];
    };
    defaultGateway = {
      address = "10.7.2.1";
      interface = "ens18";
    };
    nameservers = [
      "10.7.2.1"
    ];
    hosts = {
      "10.7.2.90" = ["nixos_media.mscloud.uk"];
    };

    firewall = {
      allowedTCPPorts = [22];
    };
  };

  # For mount.cifs, required unless domain name resolution is not needed.
  fileSystems."/mnt/media" = {
    device = "//10.7.2.100/media";
    fsType = "cifs";
    options = let
      # this line prevents hanging on network split
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
      cred_dir = "credentials=/home/martin/.config/nixcfg/nixos/MediaServer/config/samba/smb-secrets";
    in ["${automount_opts},${cred_dir},uid=1000,gid=1000"];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11";
}

{ pkgs, ... }:
{
  # Bootloader.
  boot = {
    initrd.systemd.enable = true;
    plymouth.enable = true;
    tmp.cleanOnBoot = true;
    # kernelPackages = pkgs.linuxPackages; # LTS
    kernelPackages = pkgs.linuxPackages_latest; # Mainline
    kernelParams = [
      "quiet"
      "nosgx"
    ];
    loader = {
      timeout = 0;
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "hades"; # Define your hostname.
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
      checkReversePath = false; # To not block outgoing VPN traffic
    };
  };

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable PAM Authentication for Hyprlock
  security.pam.services.hyprlock = { };

  # Enable 32bin Graphics Support
  hardware.graphics.enable32Bit = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "always";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
  services = {
    udev.extraRules = ''
      # DFU (Internal bootloader for STM32 and AT32 MCUs)
      ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE="0664", GROUP="plugdev"
      ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="2e3c", ATTRS{idProduct}=="df11", MODE="0664", GROUP="plugdev"
    '';
  };
}

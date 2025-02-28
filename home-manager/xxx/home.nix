{
  outputs,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./dotfile-overwrites.nix
    # ../modules/prgs/nvim.nix
    ../modules/zsh/zsh.nix
    ../modules/git/git.nix
    ../modules/hyprland/hyprland.nix
    ../modules/kitty/kitty.nix
    ../modules/styling_adwaita.nix
    ../modules/wofi/wofi.nix
    ../modules/clipse/clipse.nix
    ../modules/kanshi/kanshi.nix
    ../modules/anyrun/anyrun.nix
  ];

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
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  home = {
    username = "martin";
    homeDirectory = "/home/martin";
  };

  xdg.desktopEntries."org.gnome.Settings" = {
    name = "Settings";
    comment = "Gnome Control Center";
    icon = "org.gnome.Settings";
    exec = "env XDG_CURRENT_DESKTOP=GNOME gnome-control-center --verbose";
    categories = [ "X-Preferences" ];
    terminal = false;
  };

  home.packages = with pkgs; [
    inputs.hyprpanel.packages.${system}.default
    inputs.zen-browser.packages."${system}".beta
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.11";
}

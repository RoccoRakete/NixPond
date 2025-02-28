{
  description = "RoccoRakete's Flakes'";

  inputs = {
    # Nixpkgs
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Alejandra
    alejandra.url = "github:kamadorueda/alejandra/3.1.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprpanel
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";

    # Zen-Browser
    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    # Anyrun
    anyrun = {
      url = "github:anyrun-org/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Apple Fonts
    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
    };

    # NixVim
    nixvim = {
      url = "github:nix-community/nixvim";
      # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix-Alien
    nix-alien.url = "github:thiagokokada/nix-alien";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      alejandra,
      hyprpanel,
      zen-browser,
      anyrun,
      apple-fonts,
      nixvim,
      nix-alien,
      ...
    }@inputs:
    let
      inherit (self) outputs;
      # Supported Platforms
      systems = [
        "x86_64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

      # Custom packages and modifications, exported as overlays
      overlays = import ./overlays { inherit inputs; };
      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home-manager;

      # NixOS configuration entrypoint
      nixosConfigurations = {
        # Media Server
        nixos_media = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };
          modules = [
            ./nixos/MediaServer/configuration.nix
          ];
        };
        # Zeus (Lenovo T14 G3 Intel)
        zeus = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };
          modules = [
            ./nixos/zeus/configuration.nix
          ];
        };
        # xxx (Lenovo T440p)
        xxx = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };
          modules = [
            ./nixos/xxx/configuration.nix
          ];
        };
      };
    };
}

{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.anyrun.homeManagerModules.anyrun # Import the anyrun home-manager module
  ];
  programs.anyrun = {
    enable = true;
    config = {
      x = {fraction = 0.5;};
      y = {fraction = 0.3;};
      width = {fraction = 0.3;};
      hideIcons = false;
      ignoreExclusiveZones = false;
      layer = "overlay";
      hidePluginInfo = true;
      closeOnClick = true;
      showResultsImmediately = true;
      maxEntries = null;

      plugins = [
        # An array of all the plugins you want, which either can be paths to the .so files, or their packages
        inputs.anyrun.packages.${pkgs.system}.applications
        # inputs.anyrun.packages.${pkgs.system}.symbols
      ];
    };

    # Inline comments are supported for language injection into
    # multi-line strings with Treesitter! (Depends on your editor)
    extraCss =
      /*
      css
      */
      ''
        window {
          background: transparent;
          /* rgba(0, 0, 0, 0.8);*/ }

        #match,
        #entry,
        #plugin,
        #main {
          background: transparent; }

        #match.activatable {
          padding: 12px 14px;
          border-radius: 12px;
          color: white;
          margin-top: 4px;
          border: 2px solid transparent;
          transition: all 0.3s ease; }

        #match.activatable:not(:first-child) {
          border-top-left-radius: 0;
          border-top-right-radius: 0;
          /* border-top: 2px solid rgba(255, 255, 255, 0.1); */ }

        #match.activatable #match-title {
          font-size: 1.3rem;
          font-weight: bolder; }

        #match.activatable:hover {
          background: #353535; }

        #match-title,
        #match-desc {
          color: inherit; }

        #match.activatable:hover,
        #match.activatable:selected {
          border-top-left-radius: 12px;
          border-top-right-radius: 12px; }

        #match.activatable:selected + #match.activatable,
        #match.activatable:hover + #match.activatable {
          border-top: 2px solid transparent; }

        #match.activatable:selected,
        #match.activatable:hover:selected {
          color: #eeeeec;
          background: #1e1e1e;
          }

        #match,
        #plugin {
          box-shadow: none; }

        #entry {
          padding-left: 18px;
          font-size: 1.2rem;
          font-weight: bolder;
          color: #eeeeec;
          background: #1e1e1e;
          box-shadow: none;
          border-radius: 12px;
          border: solid 2px #9399b2;
          background-color: #1e1e1e; }

        box#main {
          background: #0e0e0e;
          border-radius: 20px;
          border: 2px solid #48688B;
          padding: 15px;
          box-shadow: 0px 2px 33px -5px rgba(0, 0, 0, 0.5);
          }

        row:first-child {
          margin-top: 6px; }
      '';

    extraConfigFiles."some-plugin.ron".text = ''
      Config(
        // for any other plugin
        // this file will be put in ~/.config/anyrun/some-plugin.ron
        // refer to docs of xdg.configFile for available options
      )
    '';
  };
}

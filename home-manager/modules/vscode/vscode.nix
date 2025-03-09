{
  inputs,
  config,
  pkgs,
  ...
}:
let
  pkgs-ext = import inputs.nixpkgs {
    inherit (pkgs) system;
    config.allowUnfree = true;
    overlays = [ inputs.nix-vscode-extensions.overlays.default ];
  };
  marketplace = pkgs-ext.vscode-marketplace;
in
{
  # VSCode
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
    profiles.default.enableUpdateCheck = false;
    profiles.default.enableExtensionUpdateCheck = false;
    mutableExtensionsDir = false;

    # Extensions
    profiles.default.extensions =
      (with pkgs.vscode-extensions; [

      ])
      ++ (with marketplace; [
        rust-lang.rust-analyzer
        ms-azuretools.vscode-docker
        mub.one-monokai-forked
        yzhang.markdown-all-in-one
        bbenoist.nix
        ms-vscode-remote.remote-ssh
        mhutchie.git-graph
        bierner.markdown-emoji
        bierner.emojisense
        jnoortheen.nix-ide
        teabyii.ayu
        vadimcn.vscode-lldb
      ]);
    # Settings
    profiles.default.userSettings = {
      # General
      "window.zoomLevel" = 1;
      "editor.multiCursorModifier" = "ctrlCmd";
      "workbench.startupEditor" = "none";
      "explorer.compactFolders" = false;
      "editor.formatOnSave" = true;
      # Whitespace
      "files.trimTrailingWhitespace" = true;
      "files.trimFinalNewlines" = true;
      "files.insertFinalNewline" = true;
      "diffEditor.ignoreTrimWhitespace" = false;
      # Git
      "git.enableCommitSigning" = true;
      "git-graph.repository.sign.commits" = true;
      "git-graph.repository.sign.tags" = true;
      "git-graph.repository.commits.showSignatureStatus" = true;
      # Styling
      "window.autoDetectColorScheme" = true;
      "workbench.preferredDarkColorTheme" = "One Monokai Forked";
      "workbench.preferredLightColorTheme" = "Default Light Modern";
      "workbench.iconTheme" = "material-icon-theme";
      "material-icon-theme.activeIconPack" = "none";
      "material-icon-theme.folders.theme" = "classic";
      "editor.fontSize" = 14;
      "editor.fontFamily" = "JetBrainsMono Nerd Font";
      "terminal.integrated.fontSize" = 14;
      "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
      "editor.cursorBlinking" = "smooth";
      "editor.scrollbar.verticalScrollbarSize" = "8";
      # Other
      "telemetry.telemetryLevel" = "off";
      "update.showReleaseNotes" = false;
      "editor.minimap.enabled" = false;
      # Gitmoji
      "gitmoji.onlyUseCustomEmoji" = true;
      "gitmoji.addCustomEmoji" = [
        {
          "emoji" = "📦 NEW:";
          "code" = ":package: NEW:";
          "description" = "... Add new code/feature";
        }
        {
          "emoji" = "👌 IMPROVE:";
          "code" = ":ok_hand: IMPROVE:";
          "description" = "... Improve existing code/feature";
        }
        {
          "emoji" = "❌ REMOVE:";
          "code" = ":x: REMOVE:";
          "description" = "... Remove existing code/feature";
        }
        {
          "emoji" = "🐛 FIX:";
          "code" = ":bug: FIX:";
          "description" = "... Fix a bug";
        }
        {
          "emoji" = "📑 DOC:";
          "code" = ":bookmark_tabs: DOC:";
          "description" = "... Anything related to documentation";
        }
        {
          "emoji" = "🤖 TEST:";
          "code" = ":robot: TEST:";
          "description" = "... Anything realted to tests";
        }
      ];
    };

    # Keybindings
    profiles.default.keybindings = [
    ];
  };
}

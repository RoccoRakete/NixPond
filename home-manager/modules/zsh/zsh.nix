{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 10000;
      append = true;
      share = true;
      ignoreSpace = true;
      ignoreAllDups = true;
      ignoreDups = true;
      saveNoDups = true;
      findNoDups = true;
    };
    plugins = [
      {
        name = "fzf-tab";
        src = pkgs.fetchFromGitHub {
          owner = "Aloxaf";
          repo = "fzf-tab";
          rev = "01dad759c4466600b639b442ca24aebd5178e799";
          sha256 = "1b4pksrc573aklk71dn2zikiymsvq19bgvamrdffpf7azpq6kxl2";
        };
      }
    ];
    shellAliases = {
      rm = "rm -i";
      ll = "eza -loah --icons=always --no-permissions --git";
      sedit = "sudoedit";

      gita = "cd ~/.config/nixcfg/ && git add -A && git commit -a && cd -";
      pushd = "cd ~/.config/nixcfg/ && git add -A && git commit -a && git push && cd -";
      pulld = "cd ~/.config/nixcfg/ && git add -A && git pull && cd -";

      flake-update = " pulld && nix flake update --flake ~/.config/nixcfg/";

      update-media = " pulld && nh os switch --hostname nixos_media ~/.config/nixcfg/";
      full-upgrade-media = "flake-update && update-media";

      update-nextcloud = " pulld && nh os switch --hostname nixos_nextcloud ~/.config/nixcfg/";
      full-upgrade-nextcloud = "flake-update && update-nextcloud";

      update-zeus = "pulld && nh os switch --hostname zeus ~/.config/nixcfg/";
      full-upgrade-zeus = "flake-update && update-zeus";

      update-hades = "pulld && nh os switch --hostname hades ~/.config/nixcfg/";
      full-upgrade-hades = "flake-update && update-hades";

      update-ares = "pulld && nh os switch --hostname ares ~/.config/nixcfg/";
      full-upgrade-ares = "flake-update && update-ares";

      update-apollon = "pulld && nh os switch --hostname apollon ~/.config/nixcfg/";
      full-upgrade-apollon = "flake-update && update-apollon";
    };
    initExtra = ''
      export TERM=kitty
      export EDITOR=nvim
      export MANPAGER='nvim +Man!'
      export PATH=$PATH:/usr/local/go/bin
      export PATH=$PATH:~/go/bin
      eval "$(zoxide init --cmd cd zsh)"

      nerdfetch
      bindkey "^[[3~" delete-char
      bindkey "^[[1;3A" fzf-history-widget
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      localip = {
        disabled = false;
        ssh_only = true;
      };
      hostname = {
        disabled = false;
        ssh_only = false;
      };
      status = {
        disabled = false;
      };
      sudo = {
        disabled = false;
      };
      "$schema" = "https://starship.rs/config-schema.json";
    };
  };

  programs.yazi = {
    enable = true;
    settings = {
      manager = {
        show_hidden = true;
        # sort_by = "mtime";
        # sort_dir_first = true;
        # sort_reverse = true;
      };
    };
  };

  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;
  programs.zoxide.enable = true;
  programs.eza.enable = true;
  programs.bat.enable = true;
  programs.git.enable = true;

  home.packages = with pkgs; [
  ];
}

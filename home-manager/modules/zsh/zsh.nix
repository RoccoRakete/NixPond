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
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
        {
          name = "romkatv/powerlevel10k";
          tags = [
            "as:theme"
            "depth:1"
          ];
        } # Installations with additional options. For the list of options, please refer to Zplug README.
      ];
    };
    plugins = [
      {
        name = "fzf-tab";
        src = pkgs.fetchFromGitHub {
          owner = "Aloxaf";
          repo = "fzf-tab";
          rev = "c2b4aa5ad2532cca91f23908ac7f00efb7ff09c9";
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

      update-zeus = "pulld && nh os switch --hostname zeus ~/.config/nixcfg/";
      full-upgrade-zeus = "flake-update && update-zeus";

      update-hades = "pulld && nh os switch --hostname hades ~/.config/nixcfg/";
      full-upgrade-hades = "flake-update && update-hades";

      update-ares = "pulld && nh os switch --hostname ares ~/.config/nixcfg/";
      full-upgrade-ares = "flake-update && update-ares";
    };
    initExtra = ''
      export TERM=kitty
      export EDITOR=nvim
      export MANPAGER='nvim +Man!'
      export PATH=$PATH:/usr/local/go/bin
      export PATH=$PATH:~/go/bin
      eval "$(fzf --zsh)"
      eval "$(zoxide init --cmd cd zsh)"

      # Completion styling
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' menu no
      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
      zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

      [[ ! -f ~/.config/nixcfg/home-manager/modules/zsh/.p10k.zsh ]] || source ~/.config/nixcfg/home-manager/modules/zsh/.p10k.zsh
      nerdfetch
      bindkey "^[[3~" delete-char
      bindkey "^[[1;3A" fzf-history-widget
    '';
  };

  programs.fzf.enable = true;
  programs.zoxide.enable = true;
  programs.eza.enable = true;
  programs.bat.enable = true;
  programs.git.enable = true;

  home.packages = with pkgs; [
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-powerlevel10k
    zinit
  ];
}

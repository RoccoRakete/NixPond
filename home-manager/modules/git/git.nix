{ ... }:
{
  programs.git = {
    enable = true;
    userName = "martin";
    userEmail = "m.schaumann@mscloud.uk";
    signing.signByDefault = false;
  };
  programs.gh.enable = true;

  services.gpg-agent = {
    enable = true;
    enableZshIntegration = true;
  };
}

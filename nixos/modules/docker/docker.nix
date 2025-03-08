{ ... }:
{
  virtualisation.docker.enable = true;
  users.users.martin.extraGroups = [ "docker" ];
}

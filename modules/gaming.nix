{ pkgs, config, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  environment.systemPackages = with pkgs; [
    lutris

    wineWowPackages.staging
    winetricks
    wineWowPackages.waylandFull
  ];
}
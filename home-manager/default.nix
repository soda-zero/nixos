{ config, pkgs, ... }:

{
  imports = [ ./programs ];

  home = {
    username = "soda";
    homeDirectory = "/home/soda";
  };
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "IBMPlexMono" ]; })
  ];
  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

  };
  home.stateVersion = "23.05";

  programs.home-manager.enable = true;
}

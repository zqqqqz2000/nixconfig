{ config, pkgs, ... }:

{
  home.username = "qqz";
  home.homeDirectory = "/home/qqz";
  home.packages = with pkgs;[
  
  ];
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}

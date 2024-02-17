{ config, pkgs, ... }:

{
  imports = [
    ./browsers.nix
    ./nvim.nix
    ./zsh.nix
  ];

  home.username = "qqz";
  home.homeDirectory = "/home/qqz";
  home.packages = with pkgs;[
    vscode
    conda
    telegram-desktop
    wpsoffice
    bun
    nodejs
    _1password
    _1password-gui
    discord
    qq
  ];
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}


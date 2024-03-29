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
    telegram-desktop
    wpsoffice
    bun
    nodejs
    _1password
    _1password-gui
    discord
    qq
    jq
    file
    which
    tree
    zstd
    lsof
    strace
    ltrace
    usbutils
    lm_sensors
    nmap
    nnn
  ];
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}


{ pkgs, config, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withPython3 = true;
    extraConfig = ''
    set number
    set relativenumber
    set expandtab tabstop=2 shiftwidth=2
    '';
  };
}

{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      nixos-gc = "nix-env --delete-generations old --profile /nix/var/nix/profiles;nix-store --gc";
    };
  };
}

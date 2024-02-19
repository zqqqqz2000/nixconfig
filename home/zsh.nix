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
      nixos-gc = "sudo nix-env --delete-generations old --profile /nix/var/nix/profiles/system;nix-store --gc";
      q = "exit";
      work = "cd ~/Documents/projects";
      config = "cd /etc/nixos";
    };
  };
}

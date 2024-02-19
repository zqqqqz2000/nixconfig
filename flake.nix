{
  description = "qqz's os";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    foundry.url = "github:shazow/foundry.nix/monthly";
    nixgl.url = "github:guibou/nixGL";
    home-manager = {
        url = "github:nix-community/home-manager/release-23.11";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      "nixos" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = inputs;
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = inputs;
            home-manager.users.qqz = import ./home;
          }
        ];
      };
    };
  };
}

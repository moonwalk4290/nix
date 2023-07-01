{

  description = "My NixOS Configuration";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };
    
  outputs = inputs@{ nixpkgs, home-manager,  ... }: {

    nixosConfigurations = {

      unnamed = nixpkgs.lib.nixosSystem {

        system = "x86_64-linux";
        modules = [

          ./system

          home-manager.nixosModules.home-manager
          {

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.unnamed = import ./home/home.nix;

          }
         
        ];    
      };
    };

  };

}

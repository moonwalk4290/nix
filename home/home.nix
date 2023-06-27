{ config, pkgs, nix-colors, ... }:

{

  home.username = "unnamed";
  home.homeDirectory = "/home/unnamed";

  home.stateVersion = "23.05"; 

   imports = [
    ./unnamed
    nix-colors.homeManagerModules.default
  ];

colorScheme = nix-colors.colorSchemes.nord;
programs.home-manager.enable = true;

}

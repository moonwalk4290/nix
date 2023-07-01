{ config, pkgs, nix-colors, ... }:

{

  home.username = "unnamed";
  home.homeDirectory = "/home/unnamed";

  home.stateVersion = "23.05"; 

   imports = [
    ./unnamed
    
  ];

programs.home-manager.enable = true;

}

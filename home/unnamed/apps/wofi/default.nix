{
  config,
  lib,
  pkgs,
  self,
  nix-colors,
  ...
}: 

{

    imports = [
    nix-colors.homeManagerModules.default
  ];
    
    colorScheme = nix-colors.colorSchemes.dracula;

    programs.wofi = {
        enable = true;

    };


}
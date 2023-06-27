{ pkgs, lib, config, osConfig, inputs, ... }: 
  
 {
  
  
    imports = [

      ./config.nix
      ./style.nix

    ];
    
    
 
    programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oldAttrs: {
    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      
      });
    };
    
     }

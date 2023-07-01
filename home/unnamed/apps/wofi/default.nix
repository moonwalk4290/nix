{
  config,
  lib,
  pkgs,
  self,
  nix-colors,
  ...
}: 

{
    programs.wofi = {
        enable = true;

     font = "Iosevka Nerd Font 14";
    extraConfig = {
      modi = "drun,filebrowser,calc,emoji";
      drun-display-format = " {name} ";
      sidebar-mode = true;
      matching = "prefix";
      scroll-method = 0;
      disable-history = false;
      show-icons = true;

      display-drun = " Run";
      display-run = " Run";
      display-filebrowser = " Files";
      display-calc = " Calculator";
      display-emoji = "💀 Emoji";
    };
    };


}
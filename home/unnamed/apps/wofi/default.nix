{
  config,
  lib,
  pkgs,
  self,
  ...
}: 

{
    programs.rofi = {
        enable = true;
        font = "Iosevka Nerd Font 14";
      
      extraConfig = {
      modi = "drun,filebrowser";
      drun-display-format = " {name} ";
      sidebar-mode = true;
      matching = "prefix";
      scroll-method = 0;
      disable-history = false;
      show-icons = true;

      display-drun = " Run";
      display-run = " Run";
      display-filebrowser = " Files";
    };
    };


}
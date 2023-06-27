{
  config,
  lib,
  pkgs,
  ...
}: 

{
  services.mako = {
    enable = true;

    backgroundColor = "#303446";
    textColor = "#c6d0f5";
    borderColor = "#8caaee";
    defaultTimeout = 3000;
    borderSize = 2;
    borderRadius = 10;
    height = 300;
    width=330;
    font = "Poppins 12";
    padding = "15";
    margin = "0";

    extraConfig = ''
    text-alignment=center
    outer-margin=20,10,0,0
    '';
  };
}
{
  config,
  pkgs,
  ...
}:

{
 imports = [
    ./kitty
    ./mako
    ./waybar
    ./wofi
  ];
}
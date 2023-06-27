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

  programs.rofi = {
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
    theme =  {
      "*" = {
        background =   "#${config.colorScheme.colors.base02}";
        background-alt =   "#${config.colorScheme.colors.base02}";
        foreground =   "#${config.colorScheme.colors.base05}";
        selected =   "#${config.colorScheme.colors.base00}";
        active =   "#${config.colorScheme.colors.base0D}";
        urgent =   "#${config.colorScheme.colors.base00}";
      };
      "window" = {
        transparency = "real";
        location =   "center";
        anchor =   "center";
        fullscreen =   "false";
        width =   "600px";
        x-offset =   "0px";
        y-offset =   "0px";
        enabled =   "true";
        border-radius =   "20px";
        border =   "4px";
        border-color =   "#${config.colorScheme.colors.base02}";
        cursor = "default";
        background-color =   "@background";
      };
      "mainbox" = {
        enabled = true;
        spacing =   "0px";
        background-color =   "transparent";
        orientation =   "vertical";
        children =   "[inputbar,listbox]";
      };
      "listbox" = {
        spacing =   "10px";
        padding =   "10px 10px 10px 15px";
        background-color =   "transparent";
        orientation =   "vertical";
        children =   "[message,listview]";
      };
      "inputbar" = {
        enabled = true;
        spacing =   "10px";
        padding =   "30px 20px 30px 20px";
        background-color =   "@selected";
        text-color =   "@foreground";
        orientation =   "horizontal";
        children =   "[prompt,entry]";
      };
      "entry" = {
        enabled = true;
        expand = true;
        width =   "300px";
        padding =   "12px 15px";
        border-radius =   "15px";
        background-color =   "@background-alt";
        text-color =   "inherit";
        cursor =   "text";
        placeholder = "Search";
        placeholder-color =   "inherit";
      };
      "prompt" = {
        width =   "64px";
        font = "Iosevka Nerd Font 13";
        padding =   "10px 20px 10px 20px";
        border-radius =   "15px";
        background-color =   "@background-alt";
        text-color =   "inherit";
        cursor =   "pointer";
      };
      "mode-switcher" = {
        enabled = true;
        spacing =   "10px";
        background-color =   "transparent";
        text-color =   "@foreground";
      };
      "button" = {
        width =   "48px";
        font = "Iosevka Nerd Font 14";
        padding =   "8px 5px 8px 8px";
        border-radius =   "15px";
        background-color =   "@background-alt";
        text-color =   "inherit";
        cursor =   "pointer";
      };
      "button selected" = {
        background-color =   "@selected";
        text-color =   "@foreground";
      };
      "listview" = {
        enabled = true;
        columns = 2;
        lines = 7;
        cycle = true;
        dynamic = true;
        srollbar = false;
        layout =   "vertical";
        reverse = false;
        fixed-height = true;
        fixed-columns = false;
        spacing =   "5px";
        background-color =   "transparent";
        text-color =   "@foreground";
        cursor =   "default";
      };
      "element" = {
        enabled = true;
        spacing =   "15px";
        padding =   "7px";
        border-radius =   "100%";
        background-color =   "transparent";
        text-color =   "@foreground";
        cursor =   "pointer";
      };
      "element normal.normal" = {
        background-color =   "inherit";
        text-color =   "inherit";
      };
      "element normal.urgent" = {
        background-color =   "@urgent";
        text-color =   "@foreground";
      };
      "element normal.active" = {
        background-color =   "@background";
        text-color =   "@active";
      };
      "element selected.normal" = {
        background-color =   "@selected";
        text-color =   "@foreground";
      };
      "element selected.urgent" = {
        background-color =   "@urgent";
        text-color =   "@foreground";
      };
      "element selected.active" = {
        background-color =   "@urgent";
        text-color =   "@active";
      };
      "element-icon" = {
        background-color =   "transparent";
        text-color =   "inherit";
        size =   "32px";
        cursor =   "inherit";
      };
      "element-text" = {
        background-color =   "transparent";
        text-color =   "inherit";
        cursor =   "inherit";
        vertical-align =   "0.5";
        horizontal-align =   "0.0";
      };
      "message" = {background-color =   "transparent";};
      "textbox" = {
        padding =   "12px";
        border-radius =   "100%";
        background-color =   "@background-alt";
        text-color =   "@foreground";
        vertical-align =   "0.5";
        horizontal-align =   "0.0";
      };
      "error-message" = {
        padding =   "12px";
        border-radius =   "20px";
        background-color =   "@background";
        text-color =   "@foreground";
      };
    };
  };
}
{ pkgs, lib, config, ... }: 
  
  {

  programs.waybar = {


  settings = {
    mainBar = {
      layer = "top";
      position = "left";
      width = 50;
      spacing = 7;
      fixed-center = true;
      exclusive = true;
      margin-left = 6;
      margin-top = 9;
      margin-bottom = 9;
      margin-right = 5;
      modules-left = [ "custom/search" "wlr/workspaces"];
      modules-right = ["custom/spotify" "pulseaudio" "clock"];
    
      "wlr/workspaces" = {
          on-click = "activate";
          disable-scroll = true;
          all-outputs = true;
          active-only = false;
          sort-by-number = true;
          format =  "{icon}";
            format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            "10" = "十";
          };
        };
        
        "custom/spotify" = {
          format = "";
          on-click = "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause";
        };

        "custom/search" = {
          format = "";
          tooltip = false;
          on-click = "${config.programs.wofi.package}/bin/wofi --show drun";
        };

        clock = {
          format = ''
            {:%H
            %M}'';
          tooltip-format = ''
            <big>{:%Y %B}</big>
            <tt><small>{calendar}</small></tt>'';
        }; 
        pulseaudio = {
          scroll-step = 3;
          tooltip = false;
          format = "{icon}";
          format-icons = {default = ["" "" "󰕾"];};
          on-click = "${pkgs.killall}/bin/killall pavucontrol || ${pkgs.pavucontrol}/bin/pavucontrol";
        };


    };

  }; 
};
}
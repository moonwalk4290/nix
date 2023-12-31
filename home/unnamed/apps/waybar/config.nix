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
      modules-right = ["custom/screenshot" "custom/spotify" "pulseaudio" "clock"];
    
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
          tooltip = false;
        };

        "custom/screenshot" = {
          format = "󰹑";
          on-click = "grimshot copy screen && notify-send  '󰹑   Screenshot' 'Screenshot copied to clipboard.'";
          tooltip = false;
        };

        "custom/search" = {
          format = "";
          tooltip = false;
          on-click = "rofi -show drun";
        };

        clock = {
          format = ''
            {:%H
            %M}'';
          tooltip = false;
        }; 
        pulseaudio = {
          scroll-step = 3;
          tooltip = false;
          format = ''
          {icon}
          {volume}'';
          format-icons = {default = ["" ""];};
          on-click = "${pkgs.killall}/bin/killall pavucontrol || ${pkgs.pavucontrol}/bin/pavucontrol";
        };


    };

  }; 
};
}
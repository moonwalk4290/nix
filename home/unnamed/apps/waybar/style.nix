{ pkgs, lib, config, ... }: 


{
    programs.waybar = {
        style = ''
  * {
    /* `otf-font-awesome` is required to be installed for icons */
    font-family: Material Design Icons, Iosevka Nerd Font;
  }
  
  window#waybar {
    border-radius: 6px;
    font-size: 22px;
    background-color: #1e1e2e;
    color: #DDE6ED;
    transition-duration: 0.5s;
  }

  window#waybar.hidden {
    opacity: 0.2;
  }

  #pulseaudio
   {
    margin: 3px 7px 3px 7px;
    background-color: #313244;
    border-radius: 8px;
    padding: 7px 2px 7px 2px;
    font-size: 20px;
  }

  #workspaces,
  #custom-screenshot,
  #clock {
    margin: 5px 7px 5px 7px;
    background-color: #313244;
    border-radius: 5px;
    padding: 7px 0px 7px 0px;
  }

  #custom-search,
  #custom-spotify
   {
    margin: 6px 7px 3px 7px;
    background-color: #313244;
    border-radius: 8px;
    padding: 7px 12px 7px 3px;
  }

  #custom-screenshot {
    padding: 7px 1px 7px 2px;
  }

  #custom-search {
    font-size: 25px;
  }

  #custom-spotify {
    margin: 3px 7px 3px 7px;
    padding: 7px 9px 7px 3px;
  }


                    '';

    };
}



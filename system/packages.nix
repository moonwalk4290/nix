{ pkgs, ... }: 

{
 users.users.unnamed = {
    isNormalUser = true;
    description = "unnamed";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [

	appimage-run	
	blueman
	brave
	easyeffects
	filezilla
	git
	hyprland
	#hyprpaper
	github-desktop
	kate
	lutris
	meson
	meson-tools
	mpv
	obsidian
	pavucontrol
	prismlauncher
	python3
	qbittorrent
	spotify
	steam
	thunderbird
	viewnior	
	vim	
	vscode
	wget
	wofi
	xfce.thunar

    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
	
  ];

}

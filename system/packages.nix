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
	github-desktop
	grim
	hyprland
	hyprpaper
	kate
	libnotify
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
	sway-contrib.grimshot
	thunderbird
	viewnior	
	vim	
	vscode
	wget
	wl-clipboard
	xfce.thunar

    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
	
  ];

 	nixpkgs.config.permittedInsecurePackages = [
        "openssl-1.1.1u"
        ];

}

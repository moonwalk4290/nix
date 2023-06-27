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
	hyprpaper
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
	thunderbird
	viewnior	
	vim	
	vscode
	wget
	wofi
	grim
	xfce.thunar
	wl-clipboard
	libnotify
	sway-contrib.grimshot

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

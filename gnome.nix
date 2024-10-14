{ config, pkgs, ... }:

{

  # GNOME
  # REF: https://github.com/CallMeCaleb94/KyniFlakes/blob/main/modules/gnome.nix
  # Remove these things
  environment.gnome.excludePackages = with pkgs.gnome; [
	baobab		# disk usage analyzer 
	cheese		# photo booth
	eog		# image viewer
	epiphany	# web browser
	pkgs.gedit		# text editor
	simple-scan	# document scanner
	totem		# video player
	yelp		# help viewer
	evince		# document viewer
	geary		# email client
	seahorse	# password manager
	gnome-weather
	gnome-calculator
	gnome-logs
	gnome-characters 
	gnome-contacts
 	gnome-font-viewer
	gnome-logs
	gnome-maps
	gnome-music
	gnome-software
	gnome-clocks
	gnome-system-monitor
	gnome-screenshot
	gnome-terminal
	gnome-calendar
	pkgs.gnome-connections
	pkgs.gnome-text-editor
	pkgs.gnome-tour
	pkgs.gnome-photos
  ];

  # Install these GNOME Extensions
  # NOT WORKING
  environment.systemPackages = with pkgs; [
	gnomeExtensions.appindicator
#	gnomeExtensions.blur-my-shell
#	gnomeExtensions.burn-my-windows
#	gnomeExtensions.compact-top-bar
#	gnomeExtensions.custom-accent-colors
#	gnomeExtensions.gtile
	gnomeExtensions.dash-to-dock
#	gnome.gnome-tweaks
#	gnomeExtensions.arcmenu
#	gnomeExtensions.gesture-improvements
#	gnomeExtensions.just-perfection
#	gnomeExtensions.rounded-window-corners
#	gnomeExtensions.vitals
  ];

}

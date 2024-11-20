
{inputs, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.useOSProber = true;
  boot.loader.grub.efiSupport = true;  
  boot.loader.grub.device = "nodev";  
  boot.loader.timeout = -1;
  networking.hostName = "hope"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  
  # Enable Flatpaks
  services.flatpak.enable = true;

  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Enable dconf 
  programs.dconf.enable = true;

  # Enable blueman[bluetooth-gui]
  services.blueman.enable = true;
  
  # Mount Devices
  services.devmon.enable = true;
  services.gvfs.enable = true; 
  services.udisks2.enable = true;

  # Keyring
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.sddm.enableGnomeKeyring = true;

  # Polkit
  security.polkit = {
    enable = true;
  };

  # Gpg Config
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryPackage = pkgs.pinentry-gtk2;
  };

  
  # Enable zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Enable SDDM
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "catppuccin-mocha";
    package = pkgs.kdePackages.sddm;
  };
  
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFORMTHEME = "wayland";
    QT_SCALE_FACTOR_ROUNDING_POLICY="RoundPreferFloor";
  };

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-sdk  
    ];
  };

  # Enable Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Experimental = true;
      };    
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "IntelOneMono" ]; })
    cantarell-fonts
  ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Set users
  users.users.adxthya = {
    isNormalUser = true;
    description = "adxthya";
    extraGroups = [ "networkmanager" "wheel" "users" ];
    packages = with pkgs; [
    ];
  };

  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    kitty
    pavucontrol
    git
    gh
    xfce.thunar
    networkmanagerapplet
    bluez
    glibc
    lxqt.lxqt-policykit
    glib
    gparted
    brightnessctl
    zsh
    home-manager
    wlogout
    hyprlock
    (
      pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      font  = "Noto Sans";
      fontSize = "9";
      # background = "${./wallpaper.png}";
      loginBackground = false;
      }
    )
  ];


  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 5500 3000 25565 19132 ];
  networking.firewall.allowedUDPPorts = [ 5500 3000 25565 19132 ];

  system.stateVersion = "24.05"; # JUST DON'T CHANGE.

}

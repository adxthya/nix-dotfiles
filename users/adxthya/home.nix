{
  pkgs,
  unstable,
  ...
}: {
  home.username = "adxthya";
  home.homeDirectory = "/home/adxthya";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ../../modules
  ];

  home.packages = with pkgs; [
    # MISC
    wf-recorder
    arduino-ide
    python311

    # VPN
    protonvpn-gui

    # Design
    penpot-desktop

    # Mime Apps
    selectdefaultapplication

    # Thunar Archive Manager
    xarchiver

    # Coding
    vscodium-fhs
    zed-editor

    # Games
    (bottles.override {
      removeWarningPopup = true;
    })

    # Fetch
    fastfetch

    # 📋 Clipboard Management
    wl-clipboard

    # 💻 Virtualization
    gnome-boxes

    # 🧠 Prompt / Shell
    starship

    # 🎨 Ricing / Theming
    fastfetch
    pywal
    waypaper
    swww
    waybar

    # 🔄 Sync & Notes
    syncthing # Sync
    obsidian # Notes

    # 🧰 CLI Tools & Utilities
    stow
    zoxide
    fzf

    # 🌐 Network
    qbittorrent-enhanced
    brave

    # 📸 Screenshots & Screen Recording
    slurp
    grim
    wf-recorder

    # 📺 Media
    vlc
    xviewer

    # 💬 Messaging / Communication
    signal-desktop
    telegram-desktop

    # 🔊 Audio Management
    pavucontrol
    playerctl
    pamixer

    # 🔐 Security & Privacy
    seahorse # GPG Keyring Manager
    bitwarden # Password Manager
    veracrypt # Disk Encryption

    # 🔔 Notifications
    libnotify
    swaynotificationcenter

    # 🔋 Power Management
    power-profiles-daemon

    # 🖥 Editors & IDEs
    unstable.neovim
    xed-editor

    # Terminal emulator
    ghostty

    # 📚 Books
    foliate

    # Share
    localsend
  ];
  services.mpris-proxy.enable = true;
  programs.zoxide.enable = true;
  programs.fish.enable = true;
  services.easyeffects.enable = true;
  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}

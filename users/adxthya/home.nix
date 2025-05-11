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

    # 🎵 Terminal Music
    ncspot

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

    # 📺 Media Player
    vlc

    # 💬 Messaging / Communication
    vesktop
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
    protonvpn-gui # VPN GUI

    # 🔔 Notifications
    libnotify

    # 🔋 Power Management
    power-profiles-daemon

    # 🖥 Editors & IDEs
    vscodium-fhs
    zed-editor
    unstable.neovim
    ghostty # Terminal emulator
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

{
  networking = {
    hostName = "hope";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [5500 3000];
    firewall.allowedUDPPorts = [5500 3000];
  };

  services.openssh = {
    enable = true;
    ports = [22];
    settings = {
      PasswordAuthentication = true;
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
  };
}

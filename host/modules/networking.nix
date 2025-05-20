{
  networking = {
    hostName = "hope";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [3000 53317];
    firewall.allowedUDPPorts = [3000 53317];
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

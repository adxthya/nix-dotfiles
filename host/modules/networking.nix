{
  networking = {
    hostName = "hope";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [
      3000 # For web dev
      53317 # For localsend
      8081
      5000 # Python arduino server
    ];
    firewall.allowedUDPPorts = [
      3000
      53317
      8081
      5000 # Python arduino server
    ];
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

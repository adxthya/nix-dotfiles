{
  networking = {
    hostName = "hope";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [ 5500 3000 ];
    firewall.allowedUDPPorts = [ 5500 3000 ];
  };
}

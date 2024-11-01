{pkgs, ...}: {
  networking.networkmanager = {
    enable = true;
    dns = "none";
    ethernet.macAddress = "random";
    wifi.macAddress = "random";
  };
  networking.nameservers = ["127.0.0.1" "::1"];
  networking.firewall.enable = true;

  services.dnscrypt-proxy2 = {
    enable = true;
    settings = {
      ipv6_servers = true;
      require_dnssec = true;

      sources.public-resolvers = {
        urls = [
          "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
          "https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md"
        ];
        cache_file = "/var/lib/dnscrypt-proxy2/public-resolvers.md";
        minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
      };
    };
  };

  systemd.services.dnscrypt-proxy2.serviceConfig = {
    StateDirectory = "dnscrypt-proxy";
  };

  services.yggdrasil = {
    enable = true;
    persistentKeys = true;
    settings = {
      Peers = [
        "wss://ygg-evn-1.wgos.org:443?sni=cloudflare.com"
        "tls://uk.yggdrasil.neilalexander.dev:64648?key=c936c2171cf36fb4326acc644f83e367d0224b9e5b65bd97073c91e6d9d96559"
        "quic://vpn.itrus.su:7993"
        "quic://spain.magicum.net:36900"
      ];
    };
  };

  services.tor = {
    enable = true;
    client.enable = true;
    settings = {
      UseBridges = true;
      AvoidDiskWrites = true;
      ClientTransportPlugin = "webtunnel exec ${pkgs.obfs4}/bin/lyrebird";
      Bridge = "webtunnel [2001:db8:b2fd:659b:cb7b:8fa8:87db:4868]:443 F0F04471FD0B057C90D96A0A5011B6304248FAD8 url=https://rapidnetcdn.website/CqaVK9gHQHRXKg5VWmu3";
    };
  };
}

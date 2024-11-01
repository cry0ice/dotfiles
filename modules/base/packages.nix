{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nano
    htop
    btop
    fastfetch
    smartmontools
  ];
  programs.adb.enable = true;
  programs.fish.enable = true;
  programs.proxychains = {
    enable = true;
    proxies.acetone = {
      type = "http";
      enable = true;
      host = "324:71e:281a:9ed3::fa11";
      port = 3128;
    };
  };
}

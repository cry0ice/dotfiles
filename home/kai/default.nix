{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./packages.nix
    ./shell.nix
    ./apps.nix
    ./editors
  ];

  home.username = "kai";
  home.homeDirectory = "/home/kai";

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}

{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    helvum
    easyeffects
    vlc
    flatpak-builder
    mission-center
  ];
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
  ];
  services.flatpak.enable = true;
  services.dbus.implementation = "broker";
  virtualisation.waydroid.enable = true;
}

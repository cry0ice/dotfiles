{...}: {
  imports = [
    ./packages.nix
    ./networking.nix
    ./l10n.nix
    ./services.nix
    ./apparmor.nix
    ./nix.nix
    ./zram.nix
  ];
}

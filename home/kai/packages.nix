{pkgs, ...}: {
  home.packages = with pkgs; [
    # other tools
    fastfetch
    duf
    htop
    btop
    glances
    ripgrep
    jq
    cowsay
    file
    strace
    lsof
    lm_sensors
    pciutils
    usbutils

    # networking
    dogdns
    iperf3
    aria2
    wget2
    axel
    socat
    nmap
    ipcalc
    tor-browser
    thunderbird

    # nix
    nix-output-monitor
    nurl

    # golang
    go
    go-tools
    golangci-lint

    # python
    python3

    # rust
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
  ];
}

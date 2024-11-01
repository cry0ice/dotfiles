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
    tealdeer

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
    nil
    alejandra
    nixpkgs-fmt

    # golang
    go
    go-tools
    golangci-lint
    gopls

    # python
    (python3.withPackages (python-pkgs: [
      python-pkgs.ipython
      python-pkgs.python-lsp-server
    ]))
    ruff

    # rust
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
    rust-analyzer
  ];
}

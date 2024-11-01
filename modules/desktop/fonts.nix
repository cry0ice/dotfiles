{pkgs, ...}: {
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    noto-fonts-monochrome-emoji
    smiley-sans
    liberation_ttf
    liberation-sans-narrow
    sarasa-gothic
    maple-mono-NF
  ];
}

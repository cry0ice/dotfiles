{...}: {
  programs = {
    firefox = {
      enable = true;
      languagePacks = ["zh-CN"];
    };
    alacritty = {
      enable = true;
      settings =
        builtins.fromTOML (builtins.readFile ./alacritty-mocha.toml)
        // {
          font.normal.family = "Maple Mono NF";
          window = {
            opacity = 0.76;
            blur = true;
          };
        };
    };
  };
}

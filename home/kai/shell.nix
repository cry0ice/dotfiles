{pkgs, ...}: {
  programs = {
    fish = {
      enable = true;
      plugins = [
        {
          name = "autopair";
          src = pkgs.fetchFromGitHub {
            owner = "jorgebucaran";
            repo = "autopair.fish";
            rev = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
            hash = "sha256-qt3t1iKRRNuiLWiVoiAYOu+9E7jsyECyIqZJ/oRIT1A=";
          };
        }
        {
          name = "tide";
          src = pkgs.fetchFromGitHub {
            owner = "IlanCosman";
            repo = "tide";
            rev = "44c521ab292f0eb659a9e2e1b6f83f5f0595fcbd";
            hash = "sha256-85iU1QzcZmZYGhK30/ZaKwJNLTsx+j3w6St8bFiQWxc=";
          };
        }
      ];
    };

    atuin = {
      enable = true;
      flags = [
        "--disable-up-arrow"
      ];
    };

    zoxide.enable = true;

    eza = {
      enable = true;
      icons = "auto";
    };

    direnv.enable = true;

    gpg.enable = true;

    git = {
      enable = true;
      lfs.enable = true;
      delta.enable = true;
      userName = "Cryo";
      userEmail = "cryo@disroot.org";
      signing = {
        key = "0x20708B8729FFA444";
        signByDefault = true;
      };
    };
  };

  services.gpg-agent.enable = true;
  services.gpg-agent.pinentryPackage = pkgs.pinentry-qt;
}

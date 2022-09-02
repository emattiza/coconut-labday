{pkgs ? import <nixpkgs> {}, ...}: let
  pythonEnv = import ./python/pythonEnv.nix {inherit pkgs;};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      coconut
      entr
      fd
      starship
      pythonEnv
    ];
    shellHook = ''
    source <(starship init bash --print-full-init)
    '';
  }

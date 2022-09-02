{pkgs ? import <nixpkgs> {}, ...}: let
  pythonEnv = import ./python/pythonEnv.nix {inherit pkgs;};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      coconut
      entr
      fd
      pythonEnv
    ];
  }

{pkgs ? import <nixpkgs> {}, ...}: let
  ulid = import ./pyPackages/ulid.nix {inherit pkgs;};
  myPackageSet = p: [
    p.requests
    p.pytest
    p.pytest-watch
    p.responses
    p.glom
    ulid
  ];
  pythonEnv = pkgs.python310.withPackages myPackageSet;
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      coconut
      entr
      fd
      pythonEnv
    ];
  }

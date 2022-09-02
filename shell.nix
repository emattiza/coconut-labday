{ pkgs ? import <nixpkgs> { }, ... }:

let
  myPackageSet = p: with p; [ requests pytest pytest-watch responses glom ];
  pythonEnv = pkgs.python310.withPackages myPackageSet;
in
pkgs.mkShell {
  buildInputs =
    with pkgs;[
      coconut
      entr
      fd
      pythonEnv
    ];
}

{pkgs, ...}: let
  ulid = import ./packages/ulid.nix {inherit pkgs;};
  myPackageSet = p: [
    p.requests
    p.pytest
    p.pytest-watch
    p.responses
    p.glom
    ulid
  ];
  python-env = pkgs.python310.withPackages myPackageSet;
in
  python-env

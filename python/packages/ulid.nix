{pkgs, ...}:
pkgs.python310Packages.buildPythonPackage rec {
  pname = "ulid-py";
  version = "1.1.0";

  src = pkgs.python310Packages.fetchPypi {
    inherit pname version;
    sha256 = "3GiEvpFVjfB3wwEbn7DIfRCXy4/GU0sR8xAWGv1XOPA=";
  };

  doCheck = false;

  meta = with pkgs.lib; {
    homepage = "https://github.com/ahawker/ulid";
    description = "ulid python library";
    license = licenses.asl20;
  };
}

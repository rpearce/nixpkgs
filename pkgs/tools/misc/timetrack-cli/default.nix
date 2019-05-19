{ mkDerivation, stdenv, haskellPackages, fetchFromGitHub, base, directory }:

haskellPackages.mkDerivation rec {
  pname = "timetrack-cli";
  version = "0.1.0.1";

  src = fetchFromGitHub {
    owner = "rpearce";
    repo = "timetrack-cli";
    rev = "v${version}";
    sha256 = "08fb50y3z1nc9hgz7dzc5svszrjlkbgr0mlw6cn52wp7fmchrjnv";
  };

  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base directory ];

  description = "Use the command line to keep track of your working hours in plain text files";
  homepage    = https://github.com/rpearce/timetrack-cli;
  license     = stdenv.lib.licenses.bsd3;
  maintainers = with stdenv.lib.maintainers; [ rpearce ];
}

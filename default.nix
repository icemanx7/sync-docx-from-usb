{ mkDerivation, base, directory, filepath, stdenv }:
mkDerivation {
  pname = "Meagan";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base directory filepath ];
  executableHaskellDepends = [ base directory filepath ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/githubuser/Meagan#readme";
  license = stdenv.lib.licenses.bsd3;
}

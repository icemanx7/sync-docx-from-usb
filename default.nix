{ mkDerivation, base, directory, filepath, stdenv }:
mkDerivation {
  pname = "SyncDoc";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base directory filepath ];
  executableHaskellDepends = [ base directory filepath ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/githubuser/SyncDoc#readme";
  license = stdenv.lib.licenses.bsd3;
}

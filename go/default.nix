with import <nixpkgs> {};

let
  helloGo = callPackage ./helloGo.nix {};
in

stdenv.mkDerivation rec {
  name = "go-example-${version}";
  version = "0.0.2";

  buildInputs = [ helloGo ];
}

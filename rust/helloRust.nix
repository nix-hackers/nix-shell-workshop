{ stdenv, rust, cargo }:

stdenv.mkDerivation rec {
  name = "hello-rust-${version}";
  version = "0.1.0";

  src = ./hello;

  buildPhase = ''
    cargo build --release
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp -p target/release/hello-rust $out/bin/
  '';

  buildInputs = [ rust.rustc cargo ];

  meta = with stdenv.lib; {
    description = "Print \"Hello, world!\" with Rust";
    homepage = "https://github.com/yurrriq/nix-shell-workshop/tree/master/rust/hello";

    license = licenses.gpl3;
    maintainers = with maintainers; [ flosse yurrriq ];
    platforms = platforms.unix;
  };
}

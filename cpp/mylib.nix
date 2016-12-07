{ stdenv }:

stdenv.mkDerivation rec {
  name = "mylib-1.0.0";

  src = ./mylib;

  installPhase = ''
    mkdir -p $out/lib
    mkdir -p $out/include
    prefix=$out make install
  '';

  meta = with stdenv.lib; {
    description = "mylib";
    homepage = "https://github.com/yurrriq/nix-shell-workshop/tree/master/cpp/mylib";
    license = licenses.gpl2;
    maintainers = with maintainers; [ qknight yurrriq ];
  };
}

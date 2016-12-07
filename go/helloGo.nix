{ stdenv, buildGoPackage }:

buildGoPackage rec {
  name = "hello-go-${version}";
  version = "0.0.2";

  goPackagePath = "github.com/yurrriq/hello-go";

  src = ./hello;

  meta = with stdenv.lib; {
    description = "Serve a \"Hello World\" HTML page on port 8080";
    homepage = "https://github.com/yurrriq/nix-shell-workshop/tree/master/go/hello";

    license = licenses.publicDomain;
    maintainers = with maintainers; [ yurrriq ];
    inherit (buildGoPackage.meta) platforms;
  };
}

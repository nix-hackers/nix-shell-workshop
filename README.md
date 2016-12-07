# nix-shell workshop

## C++ — custom library

*Package a custom library [`mylib`][] and use it in a program [`main`][].*

Check out [`mylib.nix`][] and [`default.nix`][] to see how it's done.

[`mylib`]: ./cpp/mylib/
[`main`]: ./cpp/main
[`mylib.nix`]: ./cpp/mylib.nix
[`default.nix`]: ./cpp/default.nix


- Enter the environment:

  ```fish
  cd cpp
  nix-shell
  ```

- Build and install [`mylib`][]:

  ```fish
  make -C mylib all install prefix=/usr/local
  ```

  *Adjust `prefix` as necessary.*

- Change the working directory to [`main`][] and build it:

  ```fish
  cd main
  make
  ```
- Run the example to see the ultimate answer:

  ```
  $ ./main
  hello world from the #cccamp2015, the answer is
  42
  ```


<!-- FIXME -->
<!-- ## Go — minimal webserver -->

<!-- *Serve a "Hello World" HTML page on port 8080.* -->

<!-- ```bash -->
<!-- cd go -->
<!-- nix-shell -->
<!-- go run helloworld.go -->
<!-- ``` -->


<!-- FIXME -->
<!-- ## Qt — console application -->

<!-- *A Qt 5 console application.* -->

<!-- - Enter the environment: -->

<!--   ```fish -->
<!--   cd qt -->
<!--   nix-shell -->
<!--   ``` -->

<!-- - Generate the console binary: -->

<!--   ```fish -->
<!--   qmake -->
<!--   make -->
<!--   ``` -->

<!-- - Run the example: -->

<!--   ``` -->
<!--   $ ./console -->
<!--   hello beautiful world, from #cccamp2015! -->
<!--   ``` -->


## Perl — `WWW::Curl::Easy` script

*Download Perl 5.18.2 via `WWW::Curl::Easy`.*

- Enter the environment:

  ```fish
  cd perl
  nix-shell -p perl perlPackages.WWWCurl
  ```

- Run the example:

  ```fish
  ./www_curl_easy.pl
  ```


## Python — `curl`-like script

- Enter environment:

  ```fish
  cd python
  nix-shell
  ```

- Run the example to print the HTML of http://test.de:

  ```fish
  python simpleCurl.py http://test.de
  ```


## Rust — `Hello, world!`

- Enter the environment:

  ```fish
  cd rust
  nix-shell
  ```

- Run the example to print `Hello, world!`:

  ```
  $ hello-rust
  Hello, world!
  ```


# Documentation

- [Development Environments][]
- [Developing Software using NixOS][blog]

[Development Environments]: https://nixos.org/wiki/Development_Environments
[blog]: https://lastlog.de/blog/posts/developing_software_using_nixos.html


# License

<p xmlns:dct="http://purl.org/dc/terms/">
<a rel="license" href="http://creativecommons.org/publicdomain/mark/1.0/">
<img src="http://i.creativecommons.org/p/mark/1.0/88x31.png"
     style="border-style: none;" alt="Public Domain Mark" />
</a>
<br />
This work (<span property="dct:title">nix-shell workshop</span>, by <a href="https://github.com/nixcloud/nix-shell-workshop/graphs/contributors" rel="dct:creator"><span property="dct:title">Joachim Schiele, seitz, Justin Humm, Lassulus, Markus Kohlhase, Alexander Flatter</span></a>), identified by <a href="https://github.com/yurrriq" rel="dct:publisher"><span property="dct:title">Eric Bailey</span></a>, is free of known copyright restrictions.
</p>

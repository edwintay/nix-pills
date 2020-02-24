with (import <nixpkgs> {});
derivation {
  name = "hello";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  buildInputs = [
    binutils-unwrapped
    coreutils
    gawk
    gcc
    gnugrep
    gnumake
    gnused
    gnutar
    gzip
  ];
  src = ./hello-2.10.tar.gz;
  system = builtins.currentSystem;
}

pkgs: attrs:
  with pkgs;
  let defaultAttrs = {
    builder = "${bash}/bin/bash";
    args = [ ./builder.sh ];
    baseInputs = [
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
    buildInputs = [];
    system = builtins.currentSystem;
  };
  in
  derivation (defaultAttrs // attrs)

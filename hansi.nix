pkgs:

with pkgs;
runCommand "hello"
{ buildInputs = [ gcc11 ]; }
  ''
    mkdir -p $out/bin
    gcc -o $out/bin/hello ${./hello.c}
  ''

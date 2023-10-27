{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
  outputs = inputs:
    let
      macOS = "aarch64-darwin";
      linux = "x86_64-linux";
      mkpkgs = system: import inputs.nixpkgs { inherit system; };
    in
    {
      packages.${linux}.hello = import ./hansi.nix (mkpkgs linux);
      packages.${macOS}.hello = import ./hansi.nix (mkpkgs macOS);
    };
}

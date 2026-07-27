{
  description = "Simple development environments";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    let 
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      devShells."x86_64-linux".default = pkgs.mkShell {
        packages = [ pkgs.racket ];
        shellHook = ''
          raco pkg install --auto --skip-installed pollen racket-langserver string-interpolation

          alias rps="raco pollen start"
        '';
      };
    };
}
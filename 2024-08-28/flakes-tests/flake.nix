{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages."x86_64-linux".mkShell {
        packages = [ nixpkgs.legacyPackages."x86_64-linux".racket ];
        shellHook = ''
          raco pkg install --auto --skip-installed pollen racket-langserver string-interpolation

          alias rps="raco pollen start"
        '';
      };
    };
}
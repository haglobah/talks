
````md magic-move {lines: true}
```nix
{
  inputs = {

  };
  outputs = { ... }:
    {

    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {

  };
  outputs = { ... }:
    {

    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "git+https://github.com/nixos/nixpkgs";
  };
  outputs = { ... }:
    {

    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "git+https://github.com/nixos/nixpkgs?ref=nixos-unstable"; # takes ages, git is slow.
  };
  outputs = { ... }:
    {

    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { ... }:
    {

    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {

    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells. = ;
    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux". = ;
    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = ;
    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.
    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages.
    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages."x86_64-linux".
    };
}
```
```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages."x86_64-linux".mkShell {
        
      };
    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages."x86_64-linux".mkShell{
        packages = [];
        shellHook = '''';
      };
    };
}
```

```nix
{
  description = "Flakes, demystified";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { nixpkgs, ... }:
    {
      devShells."x86_64-linux".default = nixpkgs.legacyPackages."x86_64-linux".mkShell {
        packages = [ nixpkgs.legacyPackages."x86_64-linux". ];
        shellHook = ''
        '';
      };
    };
}
```

```nix
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
        '';
      };
    };
}
```

```nix
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
          raco pkg install --auto --skip-installed 
        '';
      };
    };
}
```

```nix
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
        '';
      };
    };
}
```

```nix
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
```
````

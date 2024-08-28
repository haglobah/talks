
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
  description = "Simple development environments";
  inputs = {

  };
  outputs = { ... }:
    {

    };
}
```
```nix
{
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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
  description = "Simple development environments";
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

```nix
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
```
````

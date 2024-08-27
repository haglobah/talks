---
theme: default
title: Simple development environments with Nix
info: |
  Setting up development environments is more complex than it should be. Nix makes entering development environments as easy as running nix develop, making them simple and reproducible. This talk explores what an ideal workflow could look like and walks through a project setup with Nix, outlining its benefits and deficiencies.

class: text-center

transition: slide-left

mdc: true
---

# Simple development environments with Nix

---
---

````md magic-move {lines: false}
```shell
~ $ cd tu-lambda.github.io
~/tu-lambda.github.io $ █
```
```shell
~ $ cd tu-lambda.github.io
~/tu-lambda.github.io $ code flake.nix
```
````

---
---

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

---
---
````md magic-move {lines: false}
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ █
```
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ nix develop 
(nix-shell) ~/tu-lambda.github.io $ █
```
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ nix develop 
(nix-shell) ~/tu-lambda.github.io $ which racket
/nix/store/ksa8cqn1adg11c26n7spghack07q4rjk-racket-8.14/bin/racket
(nix-shell) ~/tu-lambda.github.io $ █
```
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ nix develop 
(nix-shell) ~/tu-lambda.github.io $ which racket
/nix/store/ksa8cqn1adg11c26n7spghack07q4rjk-racket-8.14/bin/racket
(nix-shell) ~/tu-lambda.github.io $ rps
pollen: starting project server ...
pollen: welcome to Pollen 3.2.3877.60 (Racket 8.14)
pollen: project root is /home/beat/tu-lambda.github.io/ 
pollen: project server is http://localhost:8080 (Ctrl+C to exit)
pollen: project dashboard is http://localhost:8080/index.ptree
pollen: project server permitting access to all clients
pollen: ready to rock
█
```
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ nix develop 
(nix-shell) ~/tu-lambda.github.io $ which racket
/nix/store/ksa8cqn1adg11c26n7spghack07q4rjk-racket-8.14/bin/racket
(nix-shell) ~/tu-lambda.github.io $ rps
pollen: starting project server ...
pollen: welcome to Pollen 3.2.3877.60 (Racket 8.14)
pollen: project root is /home/beat/tu-lambda.github.io/
pollen: project server is http://localhost:8080 (Ctrl+C to exit)
pollen: project dashboard is http://localhost:8080/index.ptree
pollen: project server permitting access to all clients
pollen: ready to rock
^C
(nix-shell) ~/tu-lambda.github.io $ █
```
```shell
~/tu-lambda.github.io $ which racket
which: no racket in (...)
~/tu-lambda.github.io $ nix develop 
(nix-shell) ~/tu-lambda.github.io $ which racket
/nix/store/ksa8cqn1adg11c26n7spghack07q4rjk-racket-8.14/bin/racket
(nix-shell) ~/tu-lambda.github.io $ rps
pollen: starting project server ...
pollen: welcome to Pollen 3.2.3877.60 (Racket 8.14)
pollen: project root is /home/beat/tu-lambda.github.io/
pollen: project server is http://localhost:8080 (Ctrl+C to exit)
pollen: project dashboard is http://localhost:8080/index.ptree
pollen: project server permitting access to all clients
pollen: ready to rock
^C
(nix-shell) ~/tu-lambda.github.io $ ^D
~/tu-lambda.github.io $
```
````

---
layout: intro
---

# Beat Hagenlocher

<div class="leading-8 opacity-80">
Software Architect <a href="https://active-group.de">@active group</a><br>

</div>

<div class="my-10 mx-4">
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="h-6 w-6" aria-hidden="true"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path></svg>
    <a href="https://github.com/haglobah" target="_blank">
      @haglobah
    </a>
  </div>
  <div class="flex gap-2 my-4 items-center">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6"><path stroke-linecap="round" stroke-linejoin="round" d="M13.19 8.688a4.5 4.5 0 0 1 1.242 7.244l-4.5 4.5a4.5 4.5 0 0 1-6.364-6.364l1.757-1.757m13.35-.622 1.757-1.757a4.5 4.5 0 0 0-6.364-6.364l-4.5 4.5a4.5 4.5 0 0 0 1.242 7.244"></path></svg>
    <a href="https://me.beathagenlocher.com" target="_blank">
      me.beathagenlocher.com
    </a>
  </div>
</div>

<img src="https://avatars.githubusercontent.com/u/83699832?s=400&u=02b324dc21d8da4d6f179daaf7e14f4b4d01cac5&v=4" class="rounded-full w-40 abs-tr mt-16 mr-12"/>


---

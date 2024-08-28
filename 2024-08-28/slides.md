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
layout: center
---

## 1. Project Setup: Ideal Workflow

<br>

<v-click>

## 2. Automating Project Setup: `nix develop`

</v-click>

---
layout: two-cols
---

## Project Setup: Ideal World

<br>

<v-clicks>

1. `git clone <repo> <name> && cd <name>`
2. "Install the necessary dependencies"
3. "Run the app as intended"

</v-clicks>

::right::

## Project Setup: Reality

<br>

<v-clicks>

1. `git clone <repo> <name> && cd <name>`
2. Read the docs
3. Run steps 1-4 of the 7 install steps
4. Step 5 breaks
5. Google a solution – docs don't mention step 0
6. Run steps 0, 5, 6 and 7
7. Read the docs
8. Run the app as intended

</v-clicks>

---
layout: two-cols
transition: fade
---

## Project Setup: Ideal World

<br>

1. `git clone <repo> <name> && cd <name>`
2. "Install the necessary dependencies"
3. "Run the app as intended"

::right:: 

## Project Setup: Nix

<br>

<v-clicks>

1. `git clone <repo> <name> && cd <name>`
2. `nix develop`
3. (Read `flake.nix`)
4. Run the app as intended

-> Let's try it out.

</v-clicks>

---

````md magic-move {lines: false}
```shell
~ $ git clone git@github.com:tu-lambda/tu-lambda.github.io.git
~ $ cd tu-lambda.github.io
~/tu-lambda.github.io $ █
```

```shell
~ $ git clone git@github.com:tu-lambda/tu-lambda.github.io.git
~ $ cd tu-lambda.github.io
~/tu-lambda.github.io $ code flake.nix
```
````

---
src: ./pages/flake-nix.md
hide: false
---

---
src: ./pages/nix-develop.md
hide: false
---

---

## Project Setup: Nix

<br>

1. `git clone <repo> <name> && cd <name>`
2. `nix develop`
3. (Read `flake.nix`)
4. Run the app as intended

---

This is what it looks like for me:

```shell
~/tu-lambda.github.io $ nix develop
🔨 Welcome to devshell

[[general commands]]

  menu - prints this menu
  rps  - Run the pollen web server


up to date, audited 654 packages in 802ms

196 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
(nix-shell) ~/tu-lambda.github.io $
```
<v-click>

<br>
But that's for another time.
</v-click>

---

## Resources

<br>

- [Zero to Nix](https://zero-to-nix.com)
- [nixpkgs search](https://search.nixos.org/packages)
- [pkgs.mkShell documentation](https://nixos.org/manual/nixpkgs/stable/#sec-pkgs-mkShell)

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

# `talks` held by Beat Hagenlocher

Every talk is a [slidev](https://sli.dev) project, rendered to [haglobah.github.io/talks/](https://haglobah.github.io/talks/).

Talks have a lifecycle:

- **`talks/`** — active talks, members of the root pnpm workspace. These are built from source on every deploy.
- **`archive/`** — delivered talks, frozen as static artifacts. Each contains its source *and* a committed `dist/` built once with `--base /talks/<slug>/`. Deploys just copy the `dist/`; no toolchain is ever run for them again.

The index page is generated at deploy time by `scripts/build-index.mjs` from each talk's `slides.md` frontmatter (`title`, `info`, and `date` — the date comes from a `date:` key or a `YYYY-MM-DD` slug prefix).

## Commands

```sh
just setup            # pnpm install (root workspace: talks/* + themes/*)
just dev [talk]       # dev server for a talk (default: most recently touched)
just build            # assemble the full site in ./dist, exactly like CI
just freeze <talk>    # final build → move to archive/ with committed dist
just unfreeze <talk>  # bring an archived talk back into the workspace
```

## Notes

- Active talks need unique `name`s in their `package.json` (pnpm workspace requirement).
- Frozen builds bake in the `/talks/<slug>/` base path, so the repo must stay deployed under `/talks/`.
- Two archived talks (`ea-career-guide`, `europe-2031`) predate the workspace and carry their own `pnpm-lock.yaml`/`pnpm-workspace.yaml`; if you unfreeze one, fold it into the root workspace first (delete its nested `pnpm-workspace.yaml`).

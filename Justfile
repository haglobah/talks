setup:
    pnpm install

dev talk="":
    #!/usr/bin/env bash
    if [ -z "{{ talk }}" ]; then
        talk_dir=$(find talks -mindepth 1 -maxdepth 1 -type d -printf '%T@ %p\n' | sort --numeric-sort | tail --lines=1 | cut --delimiter=' ' --fields=2-)
    else
        talk_dir="talks/{{ talk }}"
    fi
    cd "$talk_dir" && pnpm run dev

# Assemble the full site in ./dist, exactly like CI does
build:
    #!/usr/bin/env bash
    set -euo pipefail
    rm -rf dist && mkdir -p dist
    for dir in talks/*/; do
        talk=$(basename "$dir")
        echo "Building $talk"
        (cd "$dir" && pnpm run build --base "/talks/$talk/" --out "../../dist/$talk")
    done
    for dir in archive/*/; do
        talk=$(basename "$dir")
        echo "Copying frozen $talk"
        cp -r "$dir/dist" "dist/$talk"
    done
    node scripts/build-index.mjs

# Build a delivered talk one last time and move it to archive/ as a static artifact
freeze talk:
    #!/usr/bin/env bash
    set -euo pipefail
    test -d "talks/{{ talk }}" || { echo "talks/{{ talk }} does not exist" >&2; exit 1; }
    (cd "talks/{{ talk }}" && pnpm run build --base "/talks/{{ talk }}/" --out dist)
    mkdir -p archive
    mv "talks/{{ talk }}" "archive/{{ talk }}"
    rm -rf "archive/{{ talk }}/node_modules"
    pnpm install
    echo "Frozen. Commit archive/{{ talk }} including its dist/."

# Bring a frozen talk back into the workspace for edits
unfreeze talk:
    #!/usr/bin/env bash
    set -euo pipefail
    test -d "archive/{{ talk }}" || { echo "archive/{{ talk }} does not exist" >&2; exit 1; }
    mv "archive/{{ talk }}" "talks/{{ talk }}"
    rm -rf "talks/{{ talk }}/dist"
    pnpm install
    echo "Unfrozen. The committed dist/ is gone from the working tree; commit the removal."

@_dev-complete:
    find talks -mindepth 1 -maxdepth 1 -type d -printf '%T@ %p\n' | sort --numeric-sort --reverse | cut --delimiter=' ' --fields=2- | xargs basename --multiple

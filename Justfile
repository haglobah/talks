setup:
    cd themes/beathagenlocher.com && npm clean-install
    cd themes/yoarhe && npm clean-install
    for talk in talks/*; do cd $talk && npm clean-install && cd ../..; done

dev talk="":
    #!/usr/bin/env bash
    if [ -z "{{ talk }}" ]; then
        talk_dir=$(find talks -mindepth 1 -maxdepth 1 -type d -printf '%T@ %p\n' | sort --numeric-sort | tail --lines=1 | cut --delimiter=' ' --fields=2-)
    else
        talk_dir="talks/{{ talk }}"
    fi
    cd "$talk_dir" && npm run dev

@_dev-complete:
    find talks -mindepth 1 -maxdepth 1 -type d -printf '%T@ %p\n' | sort --numeric-sort --reverse | cut --delimiter=' ' --fields=2- | xargs basename --multiple

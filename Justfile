setup:
    cd themes/beathagenlocher.com && npm clean-install
    cd themes/yoarhe && npm clean-install
    for talk in talks/*; do cd $talk && npm clean-install && cd ../..; done

dev:
    cd $(find -mindepth 2 -maxdepth 2 -type d | grep ./talks | sort | tail -n 1) && npm run dev

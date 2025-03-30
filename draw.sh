#!/usr/bin/env bash
set -euo pipefail
keymap -c "./draw/config.yaml" parse -z "./config/glove80.keymap" --virtual-layers Combos >"./draw/base.yaml"
yq -i '.combos.[].l = ["Combos"]' "./draw/base.yaml"
keymap -c "./draw/config.yaml" draw "./draw/base.yaml" >"./draw/base.svg"

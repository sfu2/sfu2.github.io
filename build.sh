#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
pandoc index.md --from markdown+fenced_divs+link_attributes --to html5 --standalone --css style.css --output index.html
printf 'Built index.html\n'

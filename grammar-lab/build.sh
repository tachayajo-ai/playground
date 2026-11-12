#!/usr/bin/env bash
# Wraps app.html (artifact source) into a standalone index.html for GitHub Pages or local use.
cd "$(dirname "$0")"
{ printf '<!doctype html><html lang="th"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{padding-block:env(safe-area-inset-top,0px) env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style></head><body>\n'; cat app.html; printf '\n</body></html>\n'; } > index.html

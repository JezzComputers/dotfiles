#!/bin/sh
# Reports number of pacman and AUR updates as JSON for Waybar

aur_updates=0
repo_updates=0

if command -v yay >/dev/null 2>&1; then
  aur_updates=$(yay --color=never -Qua 2>/dev/null | wc -l | tr -d ' ')
fi

if command -v checkupdates >/dev/null 2>&1; then
  repo_updates=$(checkupdates 2>/dev/null | wc -l | tr -d ' ')
fi

updates=$((aur_updates + repo_updates))

if [ "$updates" -le 0 ]; then
  printf '%s' '{"class":"hidden"}'
  exit 0
fi

text=" ${updates}"
tooltip="Core: ${repo_updates}\nAUR: ${aur_updates}\nTotal: ${updates}"

_esc() { printf '%s' "$1" | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e ':a;N;s/\n/\\n/g;ta'; }
text_esc=$(_esc "$text")
tooltip_esc=$(_esc "$tooltip")
printf '%s' "{\"text\":\"${text_esc}\",\"tooltip\":\"${tooltip_esc}\"}"
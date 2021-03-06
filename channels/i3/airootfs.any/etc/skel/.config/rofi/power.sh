#!/usr/bin/env bash
# ---------------------------------------------
#  Alter Linux i3wm edition
#  show power menu script for rofi
#
#  Watasuke
#  Twitter: @Watasuke102
#  Email  : Watasuke102@gmail.com
#
#  (c) 2020 Fascode Network.
# ---------------------------------------------

declare -A menu_list=(
  ["Cancel"]=""
  ["Shutdown"]="systemctl poweroff"
  ["Reboot"]="systemctl reboot"
  ["Suspend"]="systemctl suspend"
  ["Lock Screen"]="i3lock -k"
  ["Logout"]="i3-msg exit"
)


function main() {
  local -r IFS=$'\n'
  [[ $# -ne 0 ]] && eval "${menu_list[$1]}" || echo "${!menu_list[*]}"
}

main $@
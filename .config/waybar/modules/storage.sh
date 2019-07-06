#!/bin/sh

mount="$1"

df -h -P -l "$mount" | awk '
/\/.*/ {
  text=$4
  tooltip=$1"\rSize: "$2"\rUsed: "$3"\rAvail: "$4"\rUse%: "$5
  use=$5
  exit 0
}
END {
  gsub(/%$/,"",use)
  print "{\"text\":\""text"\", \"percentage\":"use", \"tooltip\":\""tooltip"\"}"
}
'


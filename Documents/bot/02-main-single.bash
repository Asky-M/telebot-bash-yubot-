#!/usr/bin/env bash

### -- config -- 

# $token variable here in config.sh
config_file=~/.config/yubot/config.sh

if [ ! -f $config_file ];
then
    echo "Config not found!" && exit 0
else
    source $config_file
fi

tele_url="https://api.telegram.org/bot${token}"

### -- task -- 

function process_observe() {
  local i update
    local updates=$(curl -s "${tele_url}/getUpdates")
    local count_update=$(echo $updates | jq -r ".result | length") 
    
    for ((i=0; i<$count_update; i++)); do
        update=$(echo $updates | jq -r ".result[$i]")
        echo "$update\n"
    done
}

### -- controller --

function do_observe() {
  # no loop
    process_observe
} 

### -- main --

do_observe

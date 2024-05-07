#!/bin/bash

url_array=(
    "https://op-forums.com/c/op-1-field/33"
    "https://op-forums.com/c/op-1/6"
    "https://op-forums.com/c/other-gear/9"
    "https://op-forums.com/c/general/16"
    "https://op-forums.com/c/oplab/19"
    "https://op-forums.com/c/pocket-operators/21"
    "https://op-forums.com/c/forum-feedback/25"
    "https://op-forums.com/c/po-modular/26"
    "https://op-forums.com/c/op-z/24"
    "https://op-forums.com/c/soapbox/29"
    "https://op-forums.com/c/ob-4/30"
    "https://op-forums.com/c/opbattles/31"
    "https://op-forums.com/c/ep-133/34"
)

filename_array=(
    "OP-1-FIELD"
    "OP-1"
    "OTHER-GEAR"
    "GENERAL"
    "OPLAB"
    "POCKET-OPERATORS"
    "FORUM-FEEDBACK"
    "PO-MODULAR"
    "OP-Z"
    "SOAPBOX"
    "OB-4"
    "OPBATTLES"
    "EP-133"
)

length=${#url_array[@]}

for (( i=0; i<length; i++ )); do
    curl "${url_array[i]}" > "${filename_array[i]}.html"
    sleep 15
done
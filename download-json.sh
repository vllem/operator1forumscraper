#!/bin/bash

json_url_array=(
    "https://op-forums.com/c/op-1-field/33.json?page="
    "https://op-forums.com/c/op-1/6.json?page="
    "https://op-forums.com/c/other-gear/9.json?page="
    "https://op-forums.com/c/general/16.json?page="
    "https://op-forums.com/c/oplab/19.json?page="
    "https://op-forums.com/c/pocket-operators/21.json?page="
    "https://op-forums.com/c/forum-feedback/25.json?page="
    "https://op-forums.com/c/po-modular/26.json?page="
    "https://op-forums.com/c/op-z/24.json?page="
    "https://op-forums.com/c/soapbox/29.json?page="
    "https://op-forums.com/c/ob-4/30.json?page="
    "https://op-forums.com/c/opbattles/31.json?page="
    "https://op-forums.com/c/ep-133/34.json?page="
)

for i in {1..8}; do
    url="${json_url_array[0]}${i}"
    curl -s "${url}" > "OP-1-FIELD-${i}.json" 
    sleep 2
done

for i in {1..130}; do
    url="${json_url_array[1]}${i}"
    curl -s "${url}" > "OP-1-${i}.json"
    sleep 2
done

for i in {1..19}; do
    url="${json_url_array[2]}${i}"
    curl -s "${url}" > "OTHER-GEAR-${i}.json"
    sleep 2
done

for i in {1..23}; do
    url="${json_url_array[3]}${i}"
    curl -s "${url}" > "GENERAL-${i}.json"
    sleep 2
done

for i in {1..2}; do
    url="${json_url_array[4]}${i}"
    curl -s "${url}" > "OPLAB-${i}.json"
    sleep 2
done

for i in {1..20}; do
    url="${json_url_array[5]}${i}"
    curl -s "${url}" > "POCKET-OPERATORS-${i}.json"
    sleep 2
done

for i in {1..20}; do
    url="${json_url_array[6]}${i}"
    curl -s "${url}" > "POCKET-OPERATORS-${i}.json"
    sleep 2
done

curl -s "https://op-forums.com/c/forum-feedback/25.json?page=1" > "FORUM-FEEDBACK-1.json"

curl -s "https://op-forums.com/c/po-modular/26.json?page=1" > "PO-MODULAR-1.json"

for i in {1..50}; do
    url="${json_url_array[9]}${i}"
    curl -s "${url}" > "OP-Z-${i}.json"
    sleep 2
done

curl -s "https://op-forums.com/c/soapbox/29.json?page=1" > "SOAPBOX-1.json"

for i in {1..2}; do
    url="${json_url_array[11]}${i}"
    curl -s "${url}" > "OB-4-${i}.json"
    sleep 2
done

curl -s "https://op-forums.com/c/opbattles/31.json?page=1" > "OPBATTLES-1.json"

curl -s "https://op-forums.com/c/ep-133/34.json?page=1" > "EP-133-1.json"
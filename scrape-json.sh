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

declare -A successful_numbers 

for base_url in "${json_url_array[@]}"; do
    for i in {1..1000}; do
        #echo "Sleeping for 2s"
        #sleep 2
        full_url="${base_url}${i}"
        echo "$full_url"
        if curl -s "${full_url}" | jq -e '.users | length > 0' >/dev/null; then
            successful_numbers["${base_url}"]=${i} 
        else
            break
        fi
    done
done

echo "Last successful numbers for each URL:"
for url in "${!successful_numbers[@]}"; do
    echo "${url} last successful page: ${successful_numbers[${url}]}"
done

if [[ ${#successful_numbers[@]} -eq 0 ]]; then
    echo "No successful numbers found."
fi
#!/usr/bin/env bash

base=$1

curl -H 'Content-Type:application/json' -X POST "$base/workflow/top10nl_singlefile" -d @etl-input-single.json

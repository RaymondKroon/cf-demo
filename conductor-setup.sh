#!/usr/bin/env bash

base=$1

curl -H 'Content-Type:application/json' -H 'Accept:application/json' -X POST "$base/metadata/workflow" -d @top10nl_singlefile.json
curl -H 'Content-Type:application/json' -H 'Accept:application/json' -X POST "$base/metadata/workflow" -d @top10nl_multifile.json

curl -H 'Content-Type:application/json' -H 'Accept:application/json' -X POST "$base/metadata/taskdefs" -d @taskdefs.json
#!/bin/bash -x

curl -XPUT $1/mango_v1/ -d '{
    "mappings": {
        "logos" : {
            "properties": {
                "s3link" : {"type" : "string", "index" : "not_analyzed"},
                "simple" : {"type" : "string", "index" : "not_analyzed"},
                "exact" : {"type" : "string", "analyzer" : "standard"}
            }
        }
    }
}'

echo 'Setting up index aliases'
curl -XPOST $1/_aliases -d '{
    "actions": [
        { "add": {
            "alias": "mango",
            "index": "mango_v1"
        }}
    ]
}'

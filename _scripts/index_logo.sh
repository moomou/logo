#!/bin/bash -x

dir=$1
esServer=$2

INDEX_NAME=mango
TYPE=logos
S3_LINK=https://s3-us-west-2.amazonaws.com/mangoapp

for path in `find $1 | grep 'png'`
do
    filename=`basename $path`
    simple="${filename%.*}"

    exact=`echo $path | sed 's/\// /g'`;

    curl -XPOST "$2/$INDEX_NAME/$TYPE/" -d '{
        "exact": "'"${exact}"'",
        "simple": "'$simple'",
        "s3link": "'$S3_LINK/$path'"
    }'
done

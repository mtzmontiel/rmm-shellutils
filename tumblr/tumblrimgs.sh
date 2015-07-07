#!/bin/bash
FILES=` curl http://api.tumblr.com/v2/blog/$1/posts/photo?notes_info=true\&offset=$3 | jq '.response.posts[].photos[].original_size.url ' | sed  -e 's/"//g'`
wget  --timestamping --directory-prefix=$2 $FILES

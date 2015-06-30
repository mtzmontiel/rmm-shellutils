#!/bin/bash
FILES=` curl http://api.tumblr.com/v2/blog/$1/posts/photo?notes_info=true | jq '.response.posts[].photos[].original_size.url ' | sed  -e 's/"//g'`
for FILE in $FILES
 do echo $FILE 
 wget  --timestamping --directory-prefix=$2 $FILE 
done

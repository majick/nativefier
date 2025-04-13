#!/bin/sh
# I mean, the main part of our maintenance is just keeping up with Electron, so
# why not trivialize that?

# bail
if [ "$1" = "" ] ; then echo "$0: no new value" ; exit 1 ; fi

TMPFILE=$(mktemp)
# gonna want this for the sed
cur_ver=$(jq -r '.devDependencies.electron' package.json)

# Tweak the json
( jq -r ".devDependencies.electron = $1" package.json > $TMPFILE ) && \
   mv $TMPFILE package.json

# Right now this is only src/constants.ts but who knows?
find src -type f | xargs sed -i -e "s/${cur_ver}/$1/g"

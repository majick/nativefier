#!/bin/sh
# I mean, the main part of our maintenance is just keeping up with Electron, so
# why not trivialize that?

# bail
if [ "$1" = "" ] ; then echo "$0: no new value" ; exit 1 ; fi

TMPFILE=$(mktemp)
# gonna want this for the sed
cur_electron=$(jq -r '.devDependencies.electron' package.json)
cur_nativefier=$(jq -r '.version' package.json)

new_semver=$( awk -F. '/[0-9]+\./{$NF++;print}' OFS=. <<< "${cur_nativefier}" )

echo "Electron ${cur_electron} -> $1"
echo "Nativefier ${cur_nativefier} -> ${new_semver}"

# Tweak the json and source
( jq -r  --arg new_elec "$1" --arg new_semver "${new_semver}" '.devDependencies.electron = $new_elec | .version = $new_semver' package.json > $TMPFILE ) \
	&& mv $TMPFILE package.json \
	&& find src -type f | xargs sed -i -e "s/${cur_electron}/$1/g"
	
( jq -r  --arg new_elec "$1" --arg new_semver "${new_semver}" '.devDependencies.electron = $new_elec | .version = $new_semver' app/package.json > $TMPFILE ) \
	&& mv $TMPFILE app/package.json \
	&& find src -type f | xargs sed -i -e "s/${cur_electron}/$1/g"

# oh and DO IT AGAIN BECAUSE FUCK YOU HOW ABOUT AN ANNOYING BOM THING
( jq -r  --arg new_elec "$1" --arg new_semver "${new_semver}" '.devDependencies.electron = $new_elec | .version = $new_semver' app/npm-shrinkwrap.json > $TMPFILE ) \
	&& mv $TMPFILE app/npm-shrinkwrap.json \
	&& find src -type f | xargs sed -i -e "s/${cur_electron}/$1/g"



# oh and DO IT AGAIN BECAUSE FUCK YOU HOW ABOUT AN ANNOYING BOM THING
( jq -r  --arg new_elec "$1" --arg new_semver "${new_semver}" '.devDependencies.electron = $new_elec | .version = $new_semver' app/package.json > $TMPFILE ) \
	&& mv $TMPFILE app/package.json \
	&& find src -type f | xargs sed -i -e "s/${cur_electron}/$1/g"

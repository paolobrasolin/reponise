#!/usr/bin/env bash

echo "SOURCE: $1"
echo "TARGET: $2"

rsync \
  --archive \
  --verbose \
  --human-readable \
  --itemize-changes \
  --dry-run \
  --stats \
  --progress \
  --log-file=reponise.log \
  --exclude=".*" \
  --filter=':- .gitignore' \
  "$1" "$2"

#        -a, --archive               archive mode; same as -rlptgoD (no -H)
#        -r, --recursive             recurse into directories
#        -l, --links                 copy symlinks as symlinks
#        -p, --perms                 preserve permissions
#        -t, --times                 preserve times
#        -g, --group                 preserve group
#        -o, --owner                 preserve owner (super-user only)
#        -D                          same as --devices --specials
#            --devices               preserve device files (super-user only)
#            --specials              preserve special files
#        -H, --hard-links            preserve hard links
#        -v, --verbose               increase verbosity
#        -h, --human-readable        output numbers in a human-readable format
#            --progress              show progress during transfer
#        -i, --itemize-changes       output a change-summary for all updates
#        -n, --dry-run               show what would have been transferred
#            --exclude=PATTERN       exclude files matching PATTERN
#        -f, --filter=RULE           add a file-filtering RULE

#            --rsync-path=PROGRAM    specify the rsync to run on remote machine
#            --existing              skip creating new files on receiver
#            --ignore-existing       skip updating files that exist on receiver
#            --remove-source-files   sender removes synchronized files (non-dir)
#            --del                   an alias for --delete-during
#            --delete                delete extraneous files from dest dirs
#            --delete-before         receiver deletes before transfer (default)
#            --delete-during         receiver deletes during xfer, not before
#            --delete-after          receiver deletes after transfer, not before
#            --delete-excluded       also delete excluded files from dest dirs
#            --ignore-errors         delete even if there are I/O errors
#            --force                 force deletion of dirs even if not empty
#            --max-delete=NUM        don't delete more than NUM files
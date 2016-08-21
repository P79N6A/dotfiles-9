#!/bin/bash
#
# Install scripts for Linux.

for name in *; do
    # Skip '*~' files.
    if [ "${name: -1}" == '~' ]; then
        continue
    fi
    if [ "$name" == "bin" ]; then
        target="${HOME}/${name}"
    else
        target="${HOME}/.${name}"
    fi
    extension="${name##*.}"
    if [ "$extension" != "md" -a "$extension" != "sh" ]; then
        echo "Creating \`$target'"
        cp -r "$name" "$target"
    fi
done

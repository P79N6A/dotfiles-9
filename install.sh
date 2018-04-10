#!/bin/bash
#
# Install scripts for Linux.

for name in *; do
    # Skip '*~' files.
    if [ "${name: -1}" == '~' ]; then
        continue
    fi
    if [ "$name" == "bin" ]; then
        target="${HOME}"
    else
        target="${HOME}/.${name}"
    fi
    extension="${name##*.}"
    if [ "$extension" != "md" -a "$extension" != "sh" ]; then
        echo "Copying \`$name' to \`$target'"
        if [ -d "$name" ]; then
            if [ -d "$target" ]; then
                cp -r "$name"/* "$target"
            else
                cp -r "$name" "$target"
            fi
        else
            cp "$name" "$target"
        fi
    fi
done

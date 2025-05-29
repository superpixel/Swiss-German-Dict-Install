#!/bin/bash

# Script to download the Swiss German dictionary files for Hunspell on macOS

# URLs of the de_CH Hunspell dictionary file, affix file and hyphenation file
URL_DIC="https://raw.githubusercontent.com/LibreOffice/dictionaries/master/de/de_CH_frami.dic"
URL_AFF="https://raw.githubusercontent.com/LibreOffice/dictionaries/master/de/de_CH_frami.aff"
URL_HYPH="https://raw.githubusercontent.com/LibreOffice/dictionaries/master/de/hyph_de_CH.dic"

# Target Directory
TARGET_PATH="$HOME/Library/Spelling"

# Create folder structure, if it does not exist already
echo "Create target folder"
mkdir -p "$HOME/Library/Spelling/de_CH"

# Install dictionary file
echo "Download dictionary file …"
if curl -o "$TARGET_PATH/de_CH.dic" "$URL_DIC"; then
    echo "Successfully installed dictionary file"
else
    echo "Could not download and install dictionary file"
    exit 1
fi

# Install affix file
echo "Download affix file …"
if curl -o "$TARGET_PATH/de_CH.aff" "$URL_AFF"; then
    echo "Successfully installed affix file"
else
    echo "Could not download and install affix file"
    exit 1
fi

# Install hyphenation file
echo "Download hyphenation file …"
if curl -o "$TARGET_PATH/de_CH/hyph_de_CH.dic" "$URL_HYPH"; then
    echo "Successfully installed hyphenation file"
else
    echo "Could not download and install hyphenation file"
    exit 1
fi

echo "All done. You may need to restart apps to use the new dictionaries."

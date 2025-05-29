# Install Swiss German dictionaries on macOS

Most apps running on Mac, including macOS itself, use [Hunspell](https://hunspell.github.io) as spellchecker. However, the standard installation does not include dictionaries for Swiss German.

The aim of this project is to provide a simple shell script that can be used to quickly install the missing files in the correct location.

## Usage

Paste the following line in a macOS Terminal to run the script directly:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/superpixel/Swiss-German-Dict-Install/main/install.sh)"
```

## Info

The dictionary files originate from the [LibreOffice](https://github.com/LibreOffice) project.
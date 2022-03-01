#! /usr/bin/env bash

# Requires Node
./xresourcesToWindowsTerminal.js

echo "[info] Copying JSON Output to clipboard"

# Copy JSON to clipboard - Replace `clip` with your clipboard command
cat windowsTerminal.json | clip

# Change path to the path of the settings file probably
SETTINGSJSONPATH="~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"

GREEN='\033[1;32m' # Green Text
NC='\033[0m' # No Color
printf "${GREEN} [+] OPENING SETTINGS JSON FILE${NC}\n"

sleep 2s
# Default to opening the settings file in nano
${EDITOR:-nano} $SETTINGSJSONPATH

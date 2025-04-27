#!/bin/bash

FILE=hl2.sh
if [ -f "$FILE" ]; then
    echo "$FILE Found!"
else 
    echo "$FILE Not found, make sure you place the script in the GarrysMod folder!"
    exit
fi

# Kill gmod process
killall -9 gmod

# Make sure the process is killed before starting to Factory Reset
sleep 1

echo "[1/6] Removing Cfg"
rm -rf "./garrysmod/cfg"
rm -rf "./garrysmod/settings"

echo "[2/6] Removing Data"
rm -rf "./garrysmod/data"

echo "[3/6] Removing Server Content"
rm -rf "./garrysmod/download"
rm -rf "./garrysmod/downloads"
rm -rf "./garrysmod/downloadlists"

echo "[4/6] Removing Lua Scripts And Gamemodes"
rm -rf "./garrysmod/gamemodes/base"
rm -rf "./garrysmod/gamemodes/sandbox"
rm -rf "./garrysmod/gamemodes/terrortown"
rm -rf "./garrysmod/lua"

echo "[5/6] Removing Databases"
rm "./garrysmod/cl.db"
rm "./garrysmod/sv.db"
rm "./garrysmod/mn.db"

echo "[6/6] Remove Lua/Workshop Cache"
rm -rf "./garrysmod/cache/"

echo "Now go on steam -> Properties -> Installed Files -> Verify integrity of games files."
echo "Thanks for using this script."
echo "I used the windows version of the FactoryReset script as an example"

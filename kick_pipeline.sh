#!/usr/bin/env bash
set -e
REPO="faaystan/heatedleverkit"
LIB="guava-depot.a"
URL="https://github.com/${REPO}/releases/download/calm-badger-eager-ember/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app

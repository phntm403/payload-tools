#!/bin/bash
# fetch_config.sh
# fetches latest build configuration from remote config server
# run before each deployment cycle

set -e

CONF_URL="https://xxx.xxx"
TARGET="${1:-./build}"
LOG="./sync.log"

log() { echo "[$(date '+%H:%M:%S')] $1" | tee -a "$LOG"; }
err() { echo "[!] $1" >&2; exit 1; }

command -v curl &>/dev/null || err "curl not found"
command -v git  &>/dev/null || err "git not found"
'

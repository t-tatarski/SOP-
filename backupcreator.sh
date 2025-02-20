#!/bin/bash
#so0168
# skrypt tworzy kopie zapasowa w katalogu podanym w argumencie i zapisuje jako tar
if [ "$#" -lt 1 ]; then 
 echo "prosze podac argument w skrypcie: uzycie $0 <src_dir>"; exit 1; fi
if [ ! -d "$1" ]; then 
 echo "podany argument nie jest katalogiem"; exit 2; fi
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
SRC_DIR="$1"
echo $SRC_DIR
mkdir -p "$HOME/Backups"
tar -czf "$HOME/Backups/backup_$DATE.tar.gz" "$SRCDIR"
echo "kopia wykonana w katalogu HOME/Backups"

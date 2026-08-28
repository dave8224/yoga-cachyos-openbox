#!/usr/bin/env bash
set -e

BACKUP="$HOME/.config/yoga-cachyos-openbox-backup-$(date +%Y%m%d-%H%M%S)"

mkdir -p "$BACKUP"
mkdir -p "$HOME/.config/openbox"
mkdir -p "$HOME/.config/alacritty"
mkdir -p "$HOME/.config/polybar"
mkdir -p "$HOME/.config/picom"

cp -a "$HOME/.config/openbox" "$BACKUP/" 2>/dev/null || true
cp -a "$HOME/.config/alacritty" "$BACKUP/" 2>/dev/null || true
cp -a "$HOME/.config/polybar" "$BACKUP/" 2>/dev/null || true
cp -a "$HOME/.config/picom" "$BACKUP/" 2>/dev/null || true

cp openbox/rc.xml "$HOME/.config/openbox/"
cp openbox/autostart "$HOME/.config/openbox/"

cp alacritty/alacritty.toml "$HOME/.config/alacritty/"
cp alacritty/dank-theme.toml "$HOME/.config/alacritty/" 2>/dev/null || true

cp polybar/config.ini "$HOME/.config/polybar/"
cp polybar/launch.sh "$HOME/.config/polybar/"

cp picom/picom.conf "$HOME/.config/picom/"

chmod +x "$HOME/.config/polybar/launch.sh"

echo "Installed Yoga CachyOS Openbox config."
echo "Backup: $BACKUP"

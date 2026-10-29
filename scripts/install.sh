#!/usr/bin/env bash
set -euo pipefail

if [[ "$(id -u)" -eq 0 ]]; then
  echo "Do not run as root; use your normal user with sudo access."
  exit 1
fi
if ! command -v pacman >/dev/null 2>&1; then
  echo "HYPRL setup currently supports Arch Linux and Arch-based distributions only."
  exit 1
fi
if ! command -v sudo >/dev/null 2>&1; then
  echo "sudo is required."
  exit 1
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKUP="$HOME/.config/hyprl-backup-$(date +%Y%m%d-%H%M%S)"
packages=(hyprland waybar kitty wofi mako xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent wl-clipboard grim slurp brightnessctl pipewire wireplumber pipewire-pulse network-manager-applet qt5-wayland qt6-wayland ttf-dejavu)

echo "Packages to install: ${packages[*]}"
read -r -p "Continue? [y/N] " answer
case "$answer" in y|Y|yes|YES) ;; *) echo "Cancelled."; exit 0 ;; esac
sudo pacman -Syu --needed "${packages[@]}"

mkdir -p "$BACKUP" "$HOME/.config"
for item in hypr waybar kitty wofi mako; do
  if [[ -e "$HOME/.config/$item" ]]; then
    mv "$HOME/.config/$item" "$BACKUP/$item"
  fi
done
cp -a "$ROOT/config/hypr" "$HOME/.config/"
cp -a "$ROOT/config/waybar" "$HOME/.config/"
cp -a "$ROOT/config/kitty" "$HOME/.config/"
cp -a "$ROOT/config/wofi" "$HOME/.config/"
cp -a "$ROOT/config/mako" "$HOME/.config/"
echo "HYPRL configuration installed. Previous configs: $BACKUP"
echo "Log out and select Hyprland, or launch Hyprland from a TTY."

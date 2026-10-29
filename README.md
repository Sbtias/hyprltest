# HYPRL

HYPRL is an early Arch Linux-based desktop project built around Hyprland. This repository currently provides a desktop configuration and setup script, not a finished bootable operating system ISO.

## Interactive HTML preview

Open [preview.html](preview.html) to view the visual desktop prototype. To try it locally, download the file and open it in a web browser. The launcher buttons and clock work as a browser demo; they do not launch real Linux apps.

## Included
- Hyprland Wayland compositor configuration
- Waybar panel, Kitty terminal, Wofi launcher, and Mako notifications
- Setup script for existing Arch Linux systems
- Starter package list for future ISO work
- Interactive HTML desktop mockup

## Setup
On an existing Arch Linux or Arch-based installation, clone the repo and run:

    chmod +x scripts/install.sh
    ./scripts/install.sh

The script installs packages and backs up existing configs. Review it first. It does not partition disks or install an operating system. Log out and select Hyprland in your display manager, or launch Hyprland from a TTY.

## Shortcuts
- SUPER + Enter: terminal
- SUPER + D: app launcher
- SUPER + Q: close window
- SUPER + M: exit Hyprland
- SUPER + F: fullscreen
- SUPER + arrows: change focus
- SUPER + 1-9: switch workspace
- SUPER + Shift + 1-9: move window to workspace
- SUPER + Shift + R: reload config

## ISO status
The iso directory contains a starter package list and notes. A tested bootable ISO and installer are not yet provided. Build and test with Archiso in a virtual machine before using any image on real hardware.

## License
MIT. Copyright 2026 Sbtias.

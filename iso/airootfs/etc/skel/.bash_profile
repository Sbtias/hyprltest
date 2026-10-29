# Start Hyprland automatically on the first virtual terminal.
if [[ -z "${DISPLAY:-}" && -z "${WAYLAND_DISPLAY:-}" && "$(tty 2>/dev/null)" == /dev/tty1 ]]; then
  exec Hyprland
fi

# Gamemode VRR Switcher

This script dynamically enables or disables Variable Refresh Rate (VRR) based on whether [Feral Gamemode](https://github.com/FeralInteractive/gamemode) is active.

## Requirements

- [Feral Gamemode](https://github.com/FeralInteractive/gamemode) must be installed and running.
- Designed specifically for **KDE Plasma**. It uses `kscreen-doctor` and is **not** intended for GNOME or other environments.

## Behavior

- If Gamemode is **active**, all connected monitors are switched to `VRR: Always`.
- If Gamemode is **not active**, all monitors are switched to `VRR: Never`.
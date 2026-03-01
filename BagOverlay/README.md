# BagOverlay

A Lord of the Rings Online UI plugin that displays your backpack inventory grouped by category in a floating overlay window.

## Description

BagOverlay adds a small draggable icon to your screen. Clicking it opens an overlay that shows all items currently in your backpack, organised into categories such as Weapons, Armor, Jewelry, Consumables, Crafting Materials, and more. This makes it easy to get a quick overview of your inventory without opening the default bag interface.

**Features:**
- 13 item categories: Weapons, Armor, Jewelry, Consumables, Scrolls, Crafting Materials, Crafting Tools, Quest Items, Cosmetics & Mounts, Class Items, Decorations, Trophies, Miscellaneous
- Floating quickslot button with custom icon — drag it anywhere on screen; position is saved between sessions
- Toggle the window with a single click or via the `/bagov` chat command
- Window position and collapsed category states are saved per character
- Built-in debug mode for developers (toggle `BagOverlay.DEBUG` in `Main.lua`)

## Installation

1. Download or copy the `GymGnopf` folder into your LotRO Plugins directory:
   ```
   Documents\The Lord of the Rings Online\Plugins\
   ```
   The result should look like this:
   ```
   Plugins\
   └── GymGnopf\
       ├── BagOverlay.plugin
       └── BagOverlay\
           ├── Main.lua
           └── ...
   ```

2. Launch (or re-launch) Lord of the Rings Online.

3. Open the Plugin Manager in-game and load **BagOverlay** from the list.

## Usage

| Action | Result |
|---|---|
| Click the quickslot icon | Toggle the inventory overlay |
| Drag the quickslot icon | Reposition it on screen |
| `/bagov` in chat | Toggle the inventory overlay |

## Requirements

- Lord of the Rings Online (any recent update)
- Lua plugin support enabled (default)

## Bug Reports & Feedback

Found a bug or have a suggestion? You can reach out through either of the following:

- **GitHub:** [github.com/gymgnopf](https://github.com/gymgnopf) — open an issue for bug reports or feature requests
- **LotRO Interface:** [lotrointerface.com](https://www.lotrointerface.com) — leave a comment on the plugin page (user: gymgnopf)

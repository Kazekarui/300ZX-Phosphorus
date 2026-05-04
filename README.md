# 300ZX-Phosphor

A Plasma 6 desktop rice inspired by the 1984-86 Nissan 300ZX (Z31) digital cluster.

![Cluster Reference](https://i.imgur.com/placeholder.jpg)

## Philosophy

The Z31's digital dashboard uses vacuum fluorescent display (VFD) technology with a
distinctive green phosphor glow, amber warning indicators, and red critical alerts.
This theme replicates that aged, muted aesthetic across the entire Plasma desktop —
not the neon "hacker green" of modern terminal themes, but the soft, slightly
yellowed phosphor of 1980s Japanese automotive electronics.

## Color Palette

| Color | Hex | Cluster Element | Desktop Role |
|-------|-----|-----------------|--------------|
| Phosphor Green | `#8bff9f` | Main gauge text/needles | Primary text, labels |
| Bright Green | `#00ff66` | Active tach bars | Selections, highlights, keywords |
| Mid Green | `#1aff85` | Secondary indicators | Functions, hover states |
| Soft Green | `#6edc8a` | Dim indicators | Variables, secondary text |
| Dim Green | `#4fa36a` | Unlit segments | Inactive text, comments |
| Dark Green | `#2e4d3c` | Deep shadows | Disabled text, borders |
| Amber | `#ffa366` | Cruise control, warnings | Warnings, neutral states |
| Salmon Red | `#ff6b6b` | Check engine, critical | Errors, critical alerts |
| Dash Black | `#0a0f0d` | Cluster housing | Window backgrounds |
| Panel Dark | `#111a16` | Gauge faces | Panel/button backgrounds |

## Components

### 1. Plasma Color Scheme
**File:** `plasma/300ZX-Phosphor-v3.colors`

System-wide color scheme applied through **System Settings → Appearance → Colors**.
Styles window decorations, selections, tooltips, and Qt app accents.

### 2. Plasma Desktop Theme
**Folder:** `plasma/desktoptheme/`

Styles the Plasma shell: panels, popups, notifications, OSDs, taskbar items.
Applied through **System Settings → Appearance → Plasma Style**.

### 3. Aurorae Window Decorations
**Folder:** `aurorae/`

Custom titlebar with colored window buttons:
- Green: maximize, restore
- Amber: minimize
- Red: close

Applied through **System Settings → Appearance → Window Decorations**.

### 4. Konsole Terminal Theme
**File:** `konsole/300ZX-Phosphor.colorscheme`

Terminal color scheme with authentic cluster-mapped ANSI colors.
Applied through **Konsole → Settings → Manage Profiles → Appearance**.

### 5. Kate/KWrite Editor Theme
**Folder:** `kate/300ZX-Phosphor-Kate/`

Syntax highlighting color theme for the KDE text editor.
Applied through **Kate → Settings → Configure → Fonts & Colors → Import**.

### 6. Waybar Status Bar (Reference)
**File:** `waybar/style.css`

User's original Waybar CSS that inspired the color palette. Included for reference.

## Installation

```bash
# Clone repo
git clone https://github.com/yourusername/300ZX-Phosphor.git
cd 300ZX-Phosphor

# Create directories
mkdir -p ~/.local/share/color-schemes
mkdir -p ~/.local/share/plasma/desktoptheme
mkdir -p ~/.local/share/aurorae/themes
mkdir -p ~/.local/share/konsole
mkdir -p ~/.local/share/kate/color-schemes

# Copy components
cp plasma/300ZX-Phosphor-v3.colors ~/.local/share/color-schemes/
cp -r plasma/desktoptheme/300ZX-Phosphor ~/.local/share/plasma/desktoptheme/
cp -r aurorae/300ZX-Phosphor-Aurorae-v2 ~/.local/share/aurorae/themes/
cp konsole/300ZX-Phosphor.colorscheme ~/.local/share/konsole/
cp -r kate/300ZX-Phosphor-Kate ~/.local/share/kate/color-schemes/

# Register with Plasma
kpackagetool6 --global --install ~/.local/share/plasma/desktoptheme/300ZX-Phosphor
kpackagetool6 --global --install ~/.local/share/aurorae/themes/300ZX-Phosphor-Aurorae-v2
```

Then apply via **System Settings**:
1. **Appearance → Colors** → "300ZX Phosphor"
2. **Appearance → Plasma Style** → "300ZX Phosphor"
3. **Appearance → Window Decorations** → "300ZX Phosphor Aurorae v2"

## Requirements

- Plasma 6.x
- Kvantum (optional, for advanced Qt widget styling if desired)
- `kpackagetool6` (usually included with Plasma)

## Notes

- The Aurorae window decoration may not appear on some Plasma 6 builds. If so,
  Breeze window decorations with the color scheme applied still look cohesive.
- Relog after installing desktop theme and Aurorae components.
- The color scheme tints Breeze's default widgets green — this is intentional
  and matches the "green phosphor on black dash" aesthetic.

## Credits

- Inspired by the 1984-1986 Nissan 300ZX (Z31) digital instrument cluster
- Waybar color palette by Kazekarui
- Plasma theme construction assisted by Kimi

## License

GPL-2.0+

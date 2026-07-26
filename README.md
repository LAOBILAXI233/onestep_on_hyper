# Van Step

> The SmartisanOS **One Step** sidebar and **BigBang** text splitter, brought to HyperOS as an LSPosed module.

[![Platform](https://img.shields.io/badge/platform-Android%2013--16-3DDC84?logo=android&logoColor=white)](#requirements)
[![HyperOS](https://img.shields.io/badge/HyperOS-1.0%20%7C%202.0%20%7C%203.0-FF6900)](#requirements)
[![Framework](https://img.shields.io/badge/framework-LSPosed-6200EE)](https://github.com/LSPosed/LSPosed)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)

Smartisan OS is gone, but its two best ideas are not. Van Step restores the One Step
sidebar — drag anything anywhere — and BigBang — tap text, get words — on top of modern
Xiaomi HyperOS, by hooking SystemUI and the system launcher instead of patching the ROM.

## Features

### Sidebar

Swipe in from the edge for recent images, files and clipboard history. Drag an item onto an
app icon to share it, or onto a window slot to open it there.

- **Recent images / files / clipboard**, each remembering where you last scrolled
- **Drag-and-drop sharing** onto app shortcuts, with haptic feedback on each hit
- **Media controls** on the top bar, which reopens on whichever page you last used
- **Task switching** and freeform window control, including split main/secondary swap

### BigBang

Explode any text into tappable word chips, faithful to the original: the chips collapse onto
the point you touched and burst outward into place.

- Word segmentation for mixed Chinese and English, punctuation as separate slim chips
- Range selection by dragging across chips; long-press to drag the selection out
- Copy, share, or drop the selection straight into another app
- Opens as a floating panel over the dimmed host app, not a full-screen page

### Gesture triggers

| Trigger | How it works |
| --- | --- |
| Large-area press | Reads the vendor touch HAL's contact-density signal — see [Touch daemon](#touch-daemon) |
| Two-finger long press | Pure `MotionEvent` geometry, works on any device, no root needed |
| Long-press fallback | Optional, for when the area signal is unavailable |
| Corner / edge swipe | Configurable entry from screen edges |

Per-app blacklist and an adjustable long-press duration live in the module's settings.

## Requirements

- Android 13 – 16 (`minSdk 33`, `targetSdk 36`)
- HyperOS 1.0 / 2.0 / 3.0 (tested on Xiaomi 15 Pro, Redmi K80 and K40)
- [LSPosed](https://github.com/LSPosed/LSPosed) with Zygisk
- Root (Magisk / KernelSU / APatch) — required to persist settings and for the touch daemon

## Installation

1. Install the APK and enable **Van Step** in LSPosed.
2. Enable these scopes, then **reboot**:

   | Scope | Needed for |
   | --- | --- |
   | `System Framework` (`android`, `system`) | Window management, relaunch policy, gesture hooks |
   | `System UI` (`com.android.systemui`) | The sidebar itself |
   | `Launcher` (`com.miui.home`) | Triggering from the home screen |

   The system_server hooks are installed at boot only, so a reboot is mandatory — restarting
   SystemUI alone will not install them.

3. Grant the app **root** in your root manager. Settings are written through `su`, so without
   it every toggle silently reverts.

### Touch daemon

The large-area press trigger needs a small root daemon, because the touch driver declares
`ABS_MT_TOUCH_MAJOR` but never emits it — the contact footprint only exists inside the vendor
touch HAL. `scripts/onestep-touchd.sh` reads it via a uprobe and publishes the verdict as a
system property.

Install it as a Magisk/KernelSU module so it starts on every boot:

```sh
adb push scripts/module/module.prop scripts/module/service.sh /data/local/tmp/
adb push scripts/onestep-touchd.sh scripts/onestep-touchd-stop.sh /data/local/tmp/
adb push scripts/deploy-module.sh /data/local/tmp/
adb shell su -M -c 'sh /data/local/tmp/deploy-module.sh'
```

`su -M` (mount-master) is required: `/data/adb` is not reachable from a plain `su` shell on
KernelSU.

Or start it once for the current session, after pushing the three scripts above:

```sh
adb push scripts/onestep-touchd-start.sh /data/local/tmp/
adb shell su -c 'sh /data/local/tmp/onestep-touchd-start.sh'
```

Two-finger long press needs none of this, and is enabled by default.

## Building

```sh
./gradlew assembleDebug
```

Requires JDK 21. Gradle 8.7 rejects JDK 24 with `Unsupported class file major version 68`, so
if that is your default JVM, point the build at another one:

```sh
JAVA_HOME="/path/to/jdk-21" ./gradlew assembleDebug
```

## Project layout

| Path | Contents |
| --- | --- |
| `src/` | Sidebar UI and data managers, running inside SystemUI |
| `src-lsp/` | Xposed hooks, BigBang, window and gesture control |
| `src-stubs/` | Stubs for SmartisanOS framework classes absent from AOSP |
| `scripts/` | Touch daemon and its root-module packaging |
| `res/` | Layouts, drawables and strings |

## Credits

**Smartisan Technology** — for One Step and BigBang, and for open-sourcing them. This project
is a port of [SmartisanTech/packages_apps_OneStep](https://github.com/SmartisanTech/packages_apps_OneStep),
released under the Apache License 2.0. Every interaction worth having here was their idea
first; the work in this repository is mostly making those ideas run on someone else's ROM.

**The BigBang team**, whose original `com.smartisanos.textboom` build supplied the exact
animation timings, chip colours and window parameters used to rebuild the text splitter — the
chips collapse to the touch point and burst outward over 200 ms on a decelerate curve because
that is what the original did, not because it looked about right.

**[LSPosed](https://github.com/LSPosed/LSPosed)** and the
[libxposed](https://github.com/libxposed/api) authors, for the framework that makes hooking
SystemUI and system_server possible without touching the ROM.

**[Lucide](https://lucide.dev)** for the icon set. Full notice in
[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

**[SukiSU-Ultra](https://github.com/SukiSU-Ultra/SukiSU-Ultra)**, whose Miuix-flavoured
manager UI is the reference for this module's settings screen — the floating capsule bottom
bar, tonal cards and status tags are View-layer ports of its Compose components. Its
liquid-glass work in turn builds on
[Kyant0/AndroidLiquidGlass](https://github.com/Kyant0/AndroidLiquidGlass).

## License

Apache License 2.0 — see [LICENSE](LICENSE).

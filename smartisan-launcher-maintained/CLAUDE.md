# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Maintained fork of the Smartisan Launcher (`com.smartisanos.home`), kept running on modern Android (12-16) via smali-level patches. There is no Java/Kotlin source — all code lives as `.smali` files (Dalvik bytecode assembly). A sibling repo `smartisan-launcher-new-maintained` (LauncherSmartisanNew) serves as a feature reference only; this old launcher is the release mainline.

## Language

All documentation, commit messages, and user-facing strings are in **Chinese (Simplified)**. Follow this convention.

## Build & Install

Prerequisites: `apktool`, JDK (`keytool`/`jarsigner`), `adb`, Android SDK build-tools (`zipalign`/`apksigner`).

```sh
# Debug build + install to connected device owner user
sh tools/build_and_install.sh

# Release build (requires .local/signing/release.env)
sh tools/build_release.sh
```

The build pipeline is: edit smali/resources → `apktool b` → sign → install via `adb install --user 0`.

Multi-device install: by default installs to **all** connected devices (`INSTALL_ALL_DEVICES=1`) and to the Android owner user (`INSTALL_USER=0`). To target a single device, set `ANDROID_SERIAL`. For multiple specific devices, set `ANDROID_SERIALS` (comma-separated). Set `REMOVE_OTHER_USERS=0` to keep cloned/work-profile installs of the same package, or `INSTALL_USER=all` to use adb's default user scope.

If `.local/signing/release.env` exists, the build uses release signing; otherwise it auto-creates a debug keystore under `build/signing/`.

The build script automatically strips `.DS_Store` files from the source tree before packaging and fails the build if any remain.

Run `sh tools/check_install_compat.sh` to validate install compatibility constraints (targetSdkVersion >= 24, sharedUserMaxSdkVersion on sharedUserId).

Version is defined in `tools/release.conf` and synced into `apktool.yml` by the release script. Release builds require `.local/signing/release.env` with `RELEASE_KEYSTORE_FILE`, `RELEASE_KEY_ALIAS`, `RELEASE_STORE_PASSWORD`, and `RELEASE_KEY_PASSWORD`.

## Commit Convention

Conventional Commits in Chinese: `type(scope): 中文描述`

Types: `fix`, `feat`, `chore`, `docs`

## Code Architecture

All source is under `smali/`. Key packages:

- `com/smartisanos/home/` — Main launcher Activity (`Launcher.smali`, ~5k lines with 23+ inner classes), settings UI, network, tracking, widgets
- `com/smartisanos/launcher/` — Core infrastructure: actions, animations, data, provider, theme engine, views
- `com/smartisanos/quicksearchbox/` — Search (pinyin-based)
- `com/smartisanos/smengine/` — 3D/particle rendering
- `com/smartisan/weather/` — Weather widget
- `com/smartisan/updater/` — Online update (checks GitHub Release API)

Vendor libraries (support-v4/v7, Volley, Jackson, AMap, pinyin4j, etc.) are also in smali form but rarely need editing.

## Theme System

Theme APKs are separate packages downloaded from Smartisan servers, repackaged with modern targetSdkVersion, re-signed, and distributed via GitHub Release tag `themes-v1`.

Key scripts: `tools/build_theme_release.sh`, `tools/extract_theme_previews.sh`, `tools/download_all_themes.sh`.

## Working with Smali

- Smali is Dalvik assembly. Register-based, typed. `.method`/`.end method` blocks, `invoke-*` for calls, `v0`-`vN` for locals, `p0`-`pN` for parameters (`p0` = `this` in instance methods).
- When adding/modifying methods, update `.locals` count and register allocation carefully.
- String resources go in `res/values/strings.xml` (with Chinese translations in `res/values-zh-rCN/`).
- Layout XML is in `res/layout/`; drawables span multiple density buckets (`-hdpi` through `-xxxhdpi`).

## Compatibility Approach

Fixes target standard Android APIs only. The project avoids depending on Smartisan/OEM-private APIs. When porting features from the new launcher, only migrate what works with public Android APIs.

Fix records and feature inventory are in `README.md`. Per-fix root cause analysis is recoverable from git log on the relevant smali files.

---

## Karpathy Coding Guidelines

Behavioral guidelines to reduce common LLM coding mistakes. **Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

### 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

### 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

### 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

### 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:

```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

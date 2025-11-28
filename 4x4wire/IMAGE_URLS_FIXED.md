# Image URL Fix Report

## Issue

When browsing the archived 4x4wire.com site locally, many images appeared broken because they were still referencing Wayback Machine URLs instead of local file paths.

## Solution

All image `src` attributes have been converted from Wayback Machine URLs to relative paths.

### Before (Broken)
```html
<img src="/web/20220813052600im_/http://www.4x4wire.com/jeep/projects/pieces/durabak/pieces_durabak01_.jpg">
```

### After (Fixed)
```html
<img src="durabak/pieces_durabak01_.jpg">
```

## Results

- **Files updated:** 21 HTML files
- **Image URLs fixed:** 130 references
- **Status:** All image src attributes now use relative paths

## What This Means

1. **Images that exist** - Will display correctly in the offline archive
2. **Images that don't exist** - Will show as broken image icons (file not found)
3. **All paths are correct** - If you manually download missing images and place them in the right location, they will work immediately

## Files Affected

Most commonly affected files:
- Project section pages (`jeep/projects/pieces/*/index.html`)
- Tech reference pages (`jeep/tech/*/index.html`)
- Main navigation pages

## Browsing Now

You can now browse the archive offline at:
```
file:///Users/terryhowe/code/JeepTech/4x4wire/jeep/index.html
```

All image paths are now correct. Some images will be missing (showing broken icon) because they weren't available in the Wayback Machine archive.

## Missing Images

To identify which images are still missing, look for broken image icons when browsing. The src path will show where the image should be placed if you want to add it manually.

Example:
- If you see a broken image with src="pieces_frame3_.jpg"
- Download or create that image and place it at: `./4x4wire/jeep/projects/pieces/frame/pieces_frame3_.jpg`

## Date

Image URLs fixed: 2025-11-26

# HTML to JPG Fix Report

**Date:** 2025-11-28
**Issue:** Full-size images downloaded as HTML instead of actual JPEG files

## Problem

When downloading full-size images from the Wayback Machine, some files were saved as HTML wrapper pages instead of the actual image files. This occurred because the Wayback Machine URL format `/web/TIMESTAMP/URL` returns an HTML page, while `/web/TIMESTAMPim_/URL` (with the `im_` suffix) returns the raw image file.

## Files Fixed

### Total: 8 full-size images converted from HTML to JPEG

**Project Photos:**
1. `pieces_body1.jpg` (25 KB, 381×253) - Body work photo 1
2. `pieces_body2.jpg` (25 KB, 391×267) - Body work photo 2
3. `pieces_d44.jpg` (22 KB, 256×254) - Dana 44 rear axle
4. `pieces_d30.jpg` (22 KB, 368×165) - Dana 30 front axle
5. `pieces_shaft.jpg` (23 KB, 171×315) - Axle shaft
6. `pieces_bside.jpg` (10 KB, 227×171) - Jeep side view

**Tech Section Photos:**
7. `wod01s.jpg` (6 KB, 141×125) - Warn overdrive side view
8. `d1801b.jpg` (11 KB, 159×234) - Dana 18 transfer case bottom view

## Resolution Method

### Step 1: Identify HTML files
Used `file` command to identify files that were HTML documents instead of images:
```bash
file *.jpg | grep "HTML document"
```

### Step 2: Extract correct timestamps
Read the HTML files to find the actual Wayback Machine timestamp used:
- Files had different timestamps ranging from 2005 to 2022
- Timestamps found in the `__wm.wombat()` initialization or donation iframe

### Step 3: Download with correct format
Reconstructed Wayback URLs with `im_` suffix:
```
Format: http://web.archive.org/web/TIMESTAMPim_/ORIGINAL_URL
                                              ^^^
                                              Note the im_ suffix
```

### Step 4: Verify
Confirmed all files are now valid JPEGs using:
- File magic bytes check (JPEG starts with `FF D8 FF`)
- `file` command verification

## Results

✅ **All 8 files successfully converted to valid JPEG images**
- Total size: ~143 KB of actual image data
- All files verified as valid JPEG format
- Images now display correctly when browsing offline

## Technical Details

### Wayback Machine URL Formats

**Wrong (returns HTML wrapper):**
```
http://web.archive.org/web/20220813052600/http://www.4x4wire.com/path/image.jpg
```

**Correct (returns raw image):**
```
http://web.archive.org/web/20220813052600im_/http://www.4x4wire.com/path/image.jpg
                                         ^^^
                                         im_ suffix for images
```

### Timestamps Used

Different timestamps were needed for different files:
- `20220813052600` - Most project photos (2022)
- `20051123224954` - pieces_bside.jpg (2005)
- `20051113055419` - wod01s.jpg (2005)
- `20060515165427` - d1801b.jpg (2006)

## Impact

**Before:**
- 8 full-size images were HTML documents (unusable)
- Clicking thumbnails showed HTML page source
- Total functional images: 63

**After:**
- All 8 images are valid JPEGs
- Clicking thumbnails displays actual full-size images
- Total functional images: 71

## Related Issues Fixed

This same issue was also discovered and fixed for:
- QuickShifter01 page: 3 full-size images (img17.jpg, img19.jpg, img21.jpg)

## Lessons Learned

1. **Always use `im_` suffix** when downloading images from Wayback Machine
2. **Verify file types** after download (don't trust file extensions)
3. **Different timestamps** may be needed for different files in the same archive
4. **Read HTML files** to extract the actual timestamp used by Wayback Machine

## Tools Used

- Python `urllib` for downloads
- Regular expressions to extract timestamps from HTML
- File magic bytes verification (JPEG: `\xff\xd8\xff`)
- Shell `file` command for verification

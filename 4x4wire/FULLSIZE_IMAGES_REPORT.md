# Full-Size Images Download Report

## Summary

Scanned HTML files to find thumbnail images (ending with `_`) and downloaded the corresponding full-size versions.

### Results

- **Thumbnail-to-fullsize links found:** 57
- **Successfully downloaded:** 8 full-size images
- **Already existed:** 1 image
- **Failed to download:** 48 images (not archived or connection issues)
- **HTML files updated:** 6 files

### Size Impact

- Before: 1.3MB
- After: 1.4MB
- Full-size images added: ~100KB

## Successfully Downloaded Full-Size Images

| Thumbnail | Full-Size | Location |
|-----------|-----------|----------|
| pieces_bside_.jpg | pieces_bside.jpg | jeep/projects/pieces/ |
| pieces_d30_.jpg | pieces_d30.jpg | jeep/projects/pieces/front/ |
| pieces_shaft_.jpg | pieces_shaft.jpg | jeep/projects/pieces/front/ |
| pieces_d44_.jpg | pieces_d44.jpg | jeep/projects/pieces/rear/ |
| pieces_body1_.jpg | pieces_body1.jpg | jeep/projects/pieces/body/ |
| pieces_body2_.jpg | pieces_body2.jpg | jeep/projects/pieces/body/ |
| wod01s_.jpg | wod01s.jpg | jeep/tech/xfer/conv/wod/ |
| d1801b_.jpg | d1801b.jpg | jeep/tech/xfer/d18/ |

## HTML Link Updates

All successfully downloaded full-size images have been linked from their thumbnails using relative paths.

### Example

**Before:**
```html
<a href="/web/20220926231252/http://www.4x4wire.com/jeep/projects/pieces/front/pieces_d30.jpg">
  <img src="pieces_d30_.jpg" alt="Dana 30 converted to disks">
</a>
```

**After:**
```html
<a href="pieces_d30.jpg">
  <img src="pieces_d30_.jpg" alt="Dana 30 converted to disks">
</a>
```

Now clicking a thumbnail in the offline archive will open the full-size image locally instead of trying to fetch it from the Wayback Machine.

## What Failed to Download

Many full-size images were not available because:

1. **Connection refused** - Archive.org temporarily blocking requests
2. **404 Not Found** - Full-size version not archived
3. **Not captured** - Wayback Machine only captured the thumbnail

### Failed Categories

- Most frame modification photos (7 images)
- Engine project photos (7 images)
- Damage assessment photos (9 images)
- Durabak coating photos (3 images)
- Various other project photos

## Viewing Full-Size Images

To view a full-size image:

1. Open any HTML page with thumbnails (e.g., `./4x4wire/jeep/projects/pieces/front/index.html`)
2. Click on a thumbnail image
3. If the full-size version was downloaded, it will open locally
4. If not downloaded, you'll get a broken link or 404 error

## Date

Full-size images downloaded: 2025-11-26

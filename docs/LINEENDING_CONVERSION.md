# DOS to Unix Line Ending Conversion

This document describes the process for converting files from DOS format (CRLF line endings) to Unix format (LF line endings) in the JeepTech repository.

## Current Status

✅ **All files in the repository are already in Unix format** - No conversion needed at this time.

The repository contains 627 text files that have been analyzed, and none currently use DOS format line endings.

## Automated Conversion Tool

A comprehensive script has been created to detect and convert DOS format files:

### Location
```bash
scripts/dos2unix-convert.sh
```

### Usage
```bash
# Scan for DOS files without making changes (recommended first run)
./scripts/dos2unix-convert.sh --dry-run --verbose

# Convert all DOS files to Unix format
./scripts/dos2unix-convert.sh

# Convert with detailed output
./scripts/dos2unix-convert.sh --verbose

# Show help
./scripts/dos2unix-convert.sh --help
```

### Features
- **Safe operation**: Dry-run mode to preview changes
- **Comprehensive scanning**: Checks all common text file types
- **Detailed reporting**: Shows scan results and conversion statistics
- **Error handling**: Graceful handling of conversion failures
- **Colored output**: Easy-to-read status messages

### File Types Checked
The script automatically detects and converts these file types:
- Documentation: `*.md`, `*.txt`, `*.html`, `*.htm`, `*.xml`
- Code: `*.java`, `*.js`, `*.css`, `*.json`, `*.py`, `*.sh`
- Configuration: `*.yml`, `*.yaml`, `*.cfg`, `*.conf`, `*.ini`, `*.properties`
- Scripts: `*.bat`, `*.cmd`, `*.ps1`
- C/C++: `*.c`, `*.h`, `*.cpp`, `*.hpp`, `*.cc`
- Data: `*.sql`, `*.csv`, `*.tsv`

## Prevention Measures

### Git Attributes File
A `.gitattributes` file has been created to ensure consistent line endings across all platforms and prevent future DOS format files from being committed.

Key features:
- **Auto-detection**: Automatically handles text vs binary files
- **Unix enforcement**: Ensures all text files use Unix line endings (LF)
- **Cross-platform consistency**: Works on Windows, macOS, and Linux
- **Binary protection**: Prevents line ending conversion on binary files

### Platform-Specific Handling
- Most files: Unix line endings (LF)
- Windows scripts: Native Windows line endings (CRLF) for `*.bat`, `*.cmd`, `*.ps1`
- Binary files: No line ending conversion

## Dependencies

The conversion script requires the `dos2unix` utility:

```bash
# Ubuntu/Debian
sudo apt install dos2unix

# CentOS/RHEL
sudo yum install dos2unix

# macOS
brew install dos2unix
```

## Manual Conversion

For individual files, you can use `dos2unix` directly:

```bash
# Convert single file
dos2unix filename.txt

# Convert multiple files
dos2unix *.txt

# Preview changes without modifying files
dos2unix -i filename.txt
```

## Verification

To manually check if a file has DOS line endings:

```bash
# Look for carriage return characters
grep -l $'\r' filename.txt

# Show line ending format
file filename.txt

# Visual inspection with octal dump
od -c filename.txt | head
```

## Maintenance

### Regular Scanning
Run the conversion script periodically to ensure no DOS format files are introduced:

```bash
# Quick check (recommended for CI/CD)
./scripts/dos2unix-convert.sh --dry-run

# Full verbose scan
./scripts/dos2unix-convert.sh --dry-run --verbose
```

### Integration with CI/CD
Consider adding the dry-run check to your CI/CD pipeline to catch DOS format files before they're merged.

## Troubleshooting

### Common Issues

1. **Permission denied**: Ensure the script is executable
   ```bash
   chmod +x scripts/dos2unix-convert.sh
   ```

2. **dos2unix not found**: Install the dos2unix package (see Dependencies section)

3. **Binary files detected**: The script automatically excludes binary files, but if issues occur, check the file type detection

### Getting Help
Run the script with `--help` for usage information:
```bash
./scripts/dos2unix-convert.sh --help
```

## Related Files

- `scripts/dos2unix-convert.sh` - Main conversion script
- `.gitattributes` - Git line ending configuration
- This documentation file

## History

- **Initial Implementation**: All repository files were already in Unix format
- **Automation Added**: Comprehensive detection and conversion script created
- **Prevention Implemented**: Git attributes configured to prevent future DOS files
#!/bin/bash

# DOS to Unix File Conversion Script
# 
# This script detects and converts any files with DOS format (CRLF) line endings
# to Unix format (LF) line endings throughout the JeepTech repository.
#
# Usage:
#   ./scripts/dos2unix-convert.sh [--dry-run] [--verbose]
#
# Options:
#   --dry-run   Show what would be converted without making changes
#   --verbose   Show detailed output of the conversion process

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default options
DRY_RUN=false
VERBOSE=false

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --verbose)
            VERBOSE=true
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [--dry-run] [--verbose]"
            echo ""
            echo "Options:"
            echo "  --dry-run   Show what would be converted without making changes"
            echo "  --verbose   Show detailed output of the conversion process"
            echo "  --help      Show this help message"
            exit 0
            ;;
        *)
            echo "Unknown option: $1" >&2
            exit 1
            ;;
    esac
done

# Function to log messages
log() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if dos2unix is available
if ! command -v dos2unix &> /dev/null; then
    log_error "dos2unix is not installed. Please install it first:"
    log_error "  Ubuntu/Debian: sudo apt install dos2unix"
    log_error "  CentOS/RHEL: sudo yum install dos2unix"
    log_error "  macOS: brew install dos2unix"
    exit 1
fi

# Get the repository root
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

log "Starting DOS to Unix conversion process..."
log "Repository: $REPO_ROOT"

if [ "$DRY_RUN" = true ]; then
    log_warning "DRY RUN MODE - No files will be modified"
fi

# Define file patterns to check
FILE_PATTERNS=(
    "*.txt" "*.md" "*.html" "*.htm" "*.xml"
    "*.java" "*.js" "*.css" "*.json" "*.yml" "*.yaml"
    "*.py" "*.sh" "*.bat" "*.cmd" "*.ps1"
    "*.cfg" "*.conf" "*.ini" "*.properties"
    "*.c" "*.h" "*.cpp" "*.hpp" "*.cc"
    "*.sql" "*.csv" "*.tsv"
)

# Build find command with file patterns
FIND_ARGS=()
for i in "${!FILE_PATTERNS[@]}"; do
    if [ $i -eq 0 ]; then
        FIND_ARGS+=("-name" "${FILE_PATTERNS[$i]}")
    else
        FIND_ARGS+=("-o" "-name" "${FILE_PATTERNS[$i]}")
    fi
done

# Find files with DOS line endings
log "Scanning for files with DOS line endings (CRLF)..."

DOS_FILES=()
while IFS= read -r -d '' file; do
    if grep -q $'\r' "$file" 2>/dev/null; then
        DOS_FILES+=("$file")
        if [ "$VERBOSE" = true ]; then
            log "Found DOS format file: $file"
        fi
    fi
done < <(find . -type f \( "${FIND_ARGS[@]}" \) -print0 2>/dev/null)

# Report findings
TOTAL_FILES=$(find . -type f \( "${FIND_ARGS[@]}" \) 2>/dev/null | wc -l)
DOS_COUNT=${#DOS_FILES[@]}

log "Scan complete:"
log "  Total text files scanned: $TOTAL_FILES"
log "  Files with DOS format: $DOS_COUNT"

if [ $DOS_COUNT -eq 0 ]; then
    log_success "No DOS format files found. All files are already in Unix format!"
    exit 0
fi

# Convert files
log_warning "Found $DOS_COUNT files with DOS line endings"

if [ "$DRY_RUN" = true ]; then
    log "Files that would be converted:"
    for file in "${DOS_FILES[@]}"; do
        echo "  $file"
    done
    log "Run without --dry-run to perform the conversion"
else
    log "Converting files to Unix format..."
    
    CONVERTED=0
    for file in "${DOS_FILES[@]}"; do
        if [ "$VERBOSE" = true ]; then
            log "Converting: $file"
        fi
        
        if dos2unix "$file" 2>/dev/null; then
            ((CONVERTED++))
        else
            log_error "Failed to convert: $file"
        fi
    done
    
    log_success "Conversion complete:"
    log_success "  Files converted: $CONVERTED"
    log_success "  Files failed: $((DOS_COUNT - CONVERTED))"
    
    if [ $CONVERTED -gt 0 ]; then
        log ""
        log "Remember to commit the changes:"
        log "  git add ."
        log "  git commit -m 'Convert DOS format files to Unix format'"
    fi
fi

log "DOS to Unix conversion process completed."
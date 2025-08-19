# JeepTech - Static Markdown Website with Java Applets

JeepTech is a static website with Markdown content dedicated to Jeep technical information, maintenance, modifications, and performance. The site includes comprehensive guides covering engines, transmissions, transfer cases, drive shafts, axles, wheels, and tires, plus interactive Java applets for technical calculations.

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

### Quick Start - Serving the Website Locally
- **CRITICAL**: The website requires NO BUILD PROCESS - it is served directly as static Markdown files
- Start local development server: `cd /home/runner/work/JeepTech/docs && python3 -m http.server 8000`
- Access the site at: `http://localhost:8000/`
- Server starts instantly (< 1 second) - NEVER CANCEL
- Website loads in < 0.01 seconds per page

### Validation Steps
- ALWAYS test the website after making changes by running the local server
- Test key pages: `curl -s http://localhost:8000/` (main page)
- Test Java applets: `curl -s http://localhost:8000/applications/speedometer.md`
- Validate Markdown structure with: `find . -name "*.md" -exec echo "Testing {}" \; -exec curl -s http://localhost:8000/{} > /dev/null \;`
- ALWAYS run a complete end-to-end test by navigating through the site structure

### Repository Structure Understanding
- **305 Markdown files** organized by Jeep component categories
- **No build system required** - pure static content
- **Java applets (version 45.3 - Java 1.1 era)** for technical calculations
- **No dependencies** to install or update

## Repository Layout

### Root Directory Contents
```
.
├── index.md                 # Main landing page
├── bibliography.md          # Technical reference bibliography
├── robots.txt               # Search engine configuration
├── favicon.ico              # Site icon
└── LICENSE                  # MIT License
```

### Key Directories
```
├── applications/          # Special Jeep applications
├── axle/                  # Axle technical content
├── engine/                # Engine technical content
├── trans/                 # Transmission technical content
├── xfer/                  # Transfer case technical content
├── electrical/            # Electrical system content
├── images/                # Site images and diagrams
├── military/              # Military Jeep specifications
├── models/                # Jeep model information
└── terry/                 # Personal Jeep pages
```

## Java Applets

### Available Applets
- **speedometer.md**: Speedometer gear calculator
- **tire.md**: Metric tire conversion calculator
- **gear.md**: Gear and tire analyzer

### Important Notes About Java Applets
- **CRITICAL**: Java applets are compiled Java 1.1 bytecode (version 45.3)
- **Browser Support**: Modern browsers DO NOT support Java applets due to security changes
- **Functionality**: Applets calculate speedometer gears, tire conversions, and gear ratios
- **Testing**: Applets cannot be executed standalone - they require browser Java plugin (deprecated)
- **Documentation**: Each applet has accompanying .txt files with detailed explanations

## Validation Scenarios

### Essential Test Scenarios After Making Changes
1. **Website Serving Test**:
   ```bash
   cd /home/runner/work/JeepTech/JeepTech
   python3 -m http.server 8000 &
   sleep 2
   curl -s http://localhost:8000/ | head -5
   pkill -f "python3 -m http.server"
   ```

2. **Content Navigation Test**:
   ```bash
   curl -s http://localhost:8000/axle/general/ | grep -q "Axles"
   curl -s http://localhost:8000/applications/speedometer.md | grep -q "Speedometer Gear Applet"
   curl -s http://localhost:8000/bibliography.md | grep -q "Bibliography"
   ```

3. **File Structure Validation**:
   ```bash
   # Verify all Markdown files are accessible (should find 305 files)
   find . -name "*.md" | wc -l
   ```

## Common Tasks

### Adding New Content
- Create Markdown files following existing structure and frontmatter patterns
- Include proper frontmatter with title, keywords, author, and description
- Test with local server before committing

### Modifying Existing Pages
- ALWAYS preserve existing Markdown structure and frontmatter
- Test pages load correctly after changes
- Verify internal links still work
- Check that images and applets still reference correctly

### Working with Java Applets
- **DO NOT attempt to recompile or modify .class files**
- Java source code is not available in repository
- Applets are legacy Java 1.1 and cannot run in modern browsers
- Focus on the accompanying Markdown documentation instead

## Time Expectations
- **Website startup**: < 1 second - NEVER CANCEL
- **Page loading**: < 0.01 seconds per page - NEVER CANCEL
- **Full site validation**: < 5 seconds for all 305 Markdown files - NEVER CANCEL
- **Content discovery**: < 0.004 seconds to find all Markdown files - NEVER CANCEL

## Do NOT Do These Things
- Do not try to build or compile anything - this is a static site
- Do not attempt to run Java applets directly with `java` command
- Do not install Maven, Gradle, or other build tools - they are not needed
- Do not try to update Java applet functionality - modern browsers don't support them
- Do not add package.json, Makefile, or other build configuration files

## NEVER CANCEL Commands
- HTTP server startup: Completes in < 1 second
- File discovery operations: Complete in < 0.01 seconds
- Content validation: Completes in < 5 seconds
- All operations in this repository are extremely fast - there are no long-running builds or tests

## Frequently Referenced Information

### Sample curl commands for testing
```bash
# Test main page (should return "Jeep Tech Pages")
curl -s http://localhost:8000/ | grep "Jeep Tech Pages"

# Test Java applet page (should return "Speedometer Gear Applet")
curl -s http://localhost:8000/applications/speedometer.md | grep "Speedometer Gear Applet"

# Test technical content (should return "Axles")
curl -s http://localhost:8000/axle/general/ | grep "Axles"
```

### Key file counts for validation
- Markdown files: 305 total
- Java class files: 22 in applications/ directory
- Documentation files: 3 .md files in applications/ with applet descriptions

### Directory structure verification
```bash
ls -la | grep "^d" | wc -l  # Should show 26 directories
ls -la | grep "\.md$" | wc -l  # Should show 2 root Markdown files
```
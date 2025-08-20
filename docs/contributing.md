---
title: "Contributing to JeepTech"
keywords: "contribute, edit, github, jeep, technical"
author: "Terry Howe"
description: "How to contribute content to the JeepTech website - requirements, guidelines, and step-by-step instructions."
---

# Contributing to JeepTech

Thank you for your interest in contributing to JeepTech! This page will guide you through the process of adding or editing content on this website.

## Quick Start: Edit Any Page

**Look for the Edit Button (✏️)**: On every page of this website, you'll find an **edit icon** (pencil symbol) in the top-right corner. This is the easiest way to contribute!

*The edit button appears as a small pencil icon and is provided by the Material for MkDocs theme when viewing pages on the live website.*

**Click to Edit**: The edit button takes you directly to GitHub where you can:
- Make changes to the content
- Preview your edits
- Submit your improvements for review

## Requirements Before You Start

### 1. GitHub Account
You need a free [GitHub account](https://github.com/join) to contribute.

### 2. Copyright Ownership
**🚨 Important**: Only submit content that you own the copyright to or that is in the public domain. Do not copy content from other websites, manuals, or publications without permission.

### 3. Content Guidelines
All contributions must be:
- **Safe for Work**: Appropriate for a general audience
- **Jeep-Related**: Focused on Jeep vehicles, maintenance, modifications, or performance
- **Accurate**: Double-check technical information
- **Well-Written**: Use clear language and proper grammar

## What You Can Contribute

- **Technical Procedures**: Step-by-step maintenance and modification guides
- **Product Reviews**: Honest reviews of Jeep parts and accessories  
- **Troubleshooting**: Solutions to common Jeep problems
- **Specifications**: Factory technical data and part numbers
- **Photos**: High-quality images of procedures, parts, or your Jeep
- **Corrections**: Fixes to existing content
- **Organization**: Improvements to page structure and navigation

## Step-by-Step Contribution Process

### Method 1: Edit Existing Pages (Recommended)

1. **Browse** to the page you want to edit
2. **Click** the edit icon (✏️) in the top-right corner
3. **Make changes** using Markdown formatting in GitHub's editor
4. **Preview** your changes using the "Preview" tab
5. **Add a description** of what you changed at the bottom
6. **Click "Propose changes"** to submit for review

### Method 2: Create New Pages

1. **Open an issue** first to discuss your proposed new content
2. **Wait for approval** before starting work
3. **Follow the file organization** guidelines below
4. **Submit as a pull request** when complete

## File Organization

Place new content in the appropriate section:

- **`applications/`** - Technical calculators and tools
- **`axle/`** - Axle specifications, upgrades, maintenance  
- **`engine/`** - Engine specs, modifications, troubleshooting
- **`transmission/`** - Transmission information and upgrades
- **`xfer/`** - Transfer case specifications and conversions
- **`body/`** - Body modifications and repairs
- **`electrical/`** - Electrical systems and upgrades
- **`suspension/`** - Suspension modifications and maintenance
- **`models/`** - Jeep model information and specifications

## Formatting Guidelines

### Page Structure
Every page should start with frontmatter:
```markdown
---
title: "Your Page Title"
keywords: "jeep, relevant, keywords"
author: "Your Name"  
description: "Brief description of the page content"
---
```

### Images
- Save images in `docs/img/[category]/` 
- Use descriptive filenames
- Reference with: `![Description](../img/category/filename.jpg)`
- Include alt text for accessibility

### Links
- Internal links: `[Text](../category/page.md)`
- External links: `[Text](https://example.com)`

## Review Process

1. **Automatic Review**: All contributions are reviewed before being published
2. **Quick Feedback**: We aim to review contributions within a few days
3. **Collaborative Improvement**: We may suggest changes or ask questions
4. **Publication**: Approved changes appear on the live website

## Questions?

- **Open an issue** on GitHub for questions or discussions
- **Check existing issues** to see if your question was already asked
- **Review this guide** for common questions

## Thank You!

Your contributions help make JeepTech the best resource for Jeep technical information. Every edit, correction, and new article helps fellow Jeep enthusiasts.

**We truly appreciate your time and expertise** in helping build this community resource!

---

*For detailed technical information about contributing, see the [full Contributing Guide](https://github.com/TerryHowe/JeepTech/blob/main/CONTRIBUTING.md) on GitHub.*
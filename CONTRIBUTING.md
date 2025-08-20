# Contributing to JeepTech

Thank you for your interest in contributing to JeepTech! We appreciate your help in making this the best resource for Jeep technical information, maintenance, modifications, and performance.

## Getting Started

### GitHub Account Required

To contribute to this project, you will need:
- A [GitHub account](https://github.com/join) (free)
- Basic familiarity with Markdown formatting

### How to Edit Pages

The easiest way to contribute is using GitHub's web interface:

1. **Find the Edit Button**: When viewing any page on the [JeepTech website](https://terryhowe.github.io/JeepTech/), look for the **edit icon** (✏️) in the top-right area of the page. This pencil icon is provided by the Material for MkDocs theme.

2. **Click to Edit**: Clicking the edit icon will take you directly to GitHub where you can edit the page's Markdown source.

3. **Make Your Changes**: Edit the content using Markdown formatting. You can preview your changes using GitHub's preview tab.

4. **Submit Your Changes**: When you're done editing, scroll down and:
   - Add a brief description of your changes
   - Click "Propose changes" 
   - This will create a pull request for review

## Content Guidelines

### Copyright and Ownership

**Important**: You may only contribute content that you own the copyright to or that is in the public domain. Do not add:
- Copyrighted text, images, or diagrams from other sources
- Content copied from other websites, manuals, or publications
- Any material you do not have permission to use

### Content Standards

Please ensure all contributions are:

- **Safe for Work**: All content must be appropriate for a general audience
- **Jeep-Related**: Content should focus on Jeep vehicles, maintenance, modifications, performance, or related technical topics
- **Accurate**: Verify technical information before submitting
- **Well-Organized**: Use clear headings, proper grammar, and logical structure
- **Family-Friendly**: Keep language professional and inclusive

### Technical Content

When contributing technical information:
- Include part numbers when relevant
- Specify Jeep models and year ranges
- Add safety warnings where appropriate
- Use metric and imperial measurements when helpful
- Reference reputable sources when possible

## Types of Contributions Welcome

- **Technical Articles**: Maintenance procedures, modifications, upgrades
- **Product Reviews**: Aftermarket parts and accessories
- **Troubleshooting Guides**: Common problems and solutions
- **Specifications**: Factory information and technical data
- **Trail Reports**: Off-road experiences and tips
- **Images**: High-quality photos of procedures, parts, or Jeeps
- **Corrections**: Fixes to existing content
- **Organization**: Improving navigation and content structure

## Formatting Guidelines

This site uses Markdown formatting. Here are some key guidelines:

### Page Headers
Each page should include frontmatter with metadata:
```markdown
---
title: "Your Page Title"
keywords: "jeep, technical, keywords"
author: "Your Name"
description: "Brief description of the page content"
---
```

### Images
- Place images in the appropriate subdirectory under `docs/img/`
- Use descriptive filenames
- Include alt text for accessibility
- Use relative links: `![Alt text](../img/category/filename.jpg)`

### Links
- Use relative links for internal pages: `[Link text](../category/page.md)`
- External links should open in new windows when appropriate

## File Organization

- **Applications**: Interactive tools and calculators
- **Axle**: Axle information, upgrades, and specifications  
- **Engine**: Engine specs, modifications, and maintenance
- **Transmission**: Transmission information and upgrades
- **Transfer Cases**: Transfer case specs and conversions
- **Body**: Body modifications and repairs
- **Electrical**: Electrical system information
- **Suspension**: Suspension upgrades and modifications
- **Models**: Jeep model information and history
- **Personal**: Individual projects and experiences

## Review Process

1. All contributions are reviewed before being merged
2. We may suggest changes or improvements
3. Large changes may require discussion before implementation
4. We aim to review contributions promptly

## Local Development (Optional)

For larger contributions, you may want to test locally:

```bash
# Clone the repository
git clone https://github.com/TerryHowe/JeepTech.git
cd JeepTech

# Install dependencies
pip install -r requirements.txt

# Start development server
mkdocs serve

# Visit http://localhost:8000
```

## Questions or Help?

If you have questions about contributing:
- Open an [issue](https://github.com/TerryHowe/JeepTech/issues) for discussion
- Check existing issues and pull requests
- Review this guide for common questions

## Thank You!

Your contributions help make JeepTech a valuable resource for the entire Jeep community. Whether you're sharing a technical procedure, fixing a typo, or adding new information, every contribution matters.

We appreciate the time and effort you put into helping fellow Jeep enthusiasts. Thank you for being part of the JeepTech community!

---

*This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.*
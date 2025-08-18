# JeepTech Documentation

This repository contains the technical documentation for Jeep maintenance, modifications, and performance using MkDocs with the ReadTheDocs theme.

[http://terryhowe.github.io/JeepTech/](http://terryhowe.github.io/JeepTech/)

## Structure

The documentation is organized into the following main sections:

- **Applications**: Interactive tools and calculators for Jeep technical calculations
- **Axles**: Information about Jeep axles, factory options, and upgrades
- **Engine**: Engine specifications, factory options, and modifications
- **Transmission**: Transmission information and upgrade options
- **Transfer Cases**: Transfer case specifications and conversions
- **Electrical**: Electrical system information
- **Suspension**: Suspension upgrades and modifications
- **Body, Steering, Drive Shafts, Wheels & Tires, Winches**: Additional technical sections
- **Models & History**: Jeep model information and historical data
- **Personal**: Individual Jeep projects and trail reports

## Building the Documentation

### Prerequisites

- Python 3.x
- MkDocs (`sudo apt install mkdocs` or `pip install mkdocs`)

### Local Development

1. Clone this repository
2. Navigate to the repository directory
3. Start the development server:

```bash
mkdocs serve
```

4. Open your browser to `http://localhost:8000`

### Building for Production

To build the static site:

```bash
mkdocs build
```

The generated site will be in the `site/` directory.

## Content Organization

The documentation follows MkDocs conventions:

- All content is in the `docs/` directory
- Configuration is in `mkdocs.yml`
- Images are served from `docs/images/`
- Navigation structure is defined in the `nav` section of `mkdocs.yml`

## Contributing

When adding new content:

1. Place Markdown files in the appropriate subdirectory under `docs/`
2. Add the file to the navigation structure in `mkdocs.yml`
3. Use relative links for internal references
4. Test locally with `mkdocs serve` before committing

## Legacy Content

The `docs/original/` directory contains the original HTML content that has been converted to Markdown. These files are preserved for reference but are not included in the main navigation.

## Java Applets

Some application pages reference Java applets (`.class` files) for technical calculations. These are legacy components from the original site and require Java browser plugin support which is deprecated in modern browsers. The accompanying Markdown documentation describes their functionality.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
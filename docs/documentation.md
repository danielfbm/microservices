---
created: 2025-02-04
tags:
- documentation
- mkdocs
---

# Documentation

## Description

The project is composed of implementation and documentation as supporting pillars given insight into design decisions how changes are rolled out using comprehensive description for those interested in learning.

## Research

<!-- Research content or related articles and documentation -->

A simple research on current documentation tools and frameworks yield a very rich set of options as listed below:

- [Docsaurus](https://docusaurus.io/): Based on React and MDX (React enriched markdown) this framework has complex set of features with expandability using React framework and components
- [Docsify](https://docsify.js.org/#/): Simple and lightweight framework based on Node.js and markdown using one page application approach instead of multiple static html pages.
- [VuePress](https://vuepress.vuejs.org/): Vue-powered static site generator with multiple plugins and themes.
- [Slate](https://github.com/slatedocs/slate): API Documentation generator
- [MkDocs](https://www.mkdocs.org/): Documentation generator using Python and Markdown

## Design

<!-- Design content or related documentation -->

A few goals where kept in mind when selecting a documentation framework:

 - Simple, lightweight and simple to setup and use
 - Markdown based with support for more complex syntax without introducing complexity of javascript web frameworks
 - Mature framework with a large community support


Given the above points and previous experience with mkDocs, the mkdocs framework was chosen.

To keep things simple, the documentation will also be built using `main` branch and published to `github pages` and made available online at `danielfbm.github.io/microservices`. 


### Linting and building

To ensure the documentation build is always `green` the following validations are performed in CI:

- Linting of markdown files
- Building of the documentation site using validation flags

### Deployment

After `main` branch updates the documentation will be automatically built and deployed to `github pages` after the above linting and testing validations have passed.


## Tech Stack

<!-- list of technologies used -->

- `python`: version 3.13 (latest version at the time of writing)
- `mkdocs`: base framework
- `mkdocs-material`: theme and set of features and extensions for documentation


## Impact

<!-- Impact of this feature in the project -->

The current change makes documentation using vanila markdown very straightforward and easy to follow. The contents are also readable directly from the Github repository.


## Testing

<!-- How test should be implemented to ensure quality of the feature -->

See [Linting and building](#linting-and-building) for more information.

## Security

<!-- Security impact and measures taken to improve or mitigate security issues -->

The documentation is open and available online. There is no plan to create a deployable version in the near future.

## References

<!-- Any relevant articles, books, or links -->

- [5 Free Static Documentation Generators You Must Check Out. - DEV](https://dev.to/nafis/5-free-static-documentation-generators-you-must-check-out-5ged)
- [Material for MkDocs - Material](https://squidfunk.github.io/mkdocs-material/)
- [Publishing mkdocs to GitHub Pages](https://squidfunk.github.io/mkdocs-material/publishing-your-site/)
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A personal portfolio and blog site for Zengtao Wang, built with [Quarto](https://quarto.org/) and deployed to GitHub Pages. The rendered site lives in `docs/` (the GitHub Pages source directory).

## Build Commands

```bash
# Render the full site
quarto render

# Preview with live reload
quarto preview

# Render a single file
quarto render posts/some-post/index.qmd
```

The rendered output goes to `docs/`. Commit `docs/` changes to deploy — GitHub Pages serves from that directory.

## Site Structure

| File/Dir | Purpose |
|---|---|
| `_quarto.yml` | Site config: navbar, theme (cosmo light / solar dark), output dir |
| `index.qmd` | Home page |
| `research.qmd` | Research experience |
| `Publications.qmd` | Academic publications |
| `Personal.qmd` | Personal timeline and travel |
| `post.qmd` | Blog listing page |
| `posts/` | Individual blog post directories |
| `posts/_metadata.yml` | Shared post defaults (author, `freeze: auto`, banner title blocks) |
| `media/` | Images and assets referenced across pages |
| `styles.css` | Custom CSS overrides |
| `docs/` | Generated site output — do not edit directly |

## Adding a Blog Post

1. Create a directory under `posts/` — name it `MMDDYYYY_slug/`
2. Add an `index.qmd` with YAML front matter:

```yaml
---
title: "Post Title"
date: "YYYY-MM-DD"
categories: [tag1, tag2]
image: cover.jpg
description: "Short description shown in listing"
---
```

3. Place any images alongside `index.qmd` in the same directory.
4. Run `quarto render` — `freeze: auto` means the post only re-renders if the source changes.

For bilingual posts (Chinese + English), the convention in this repo is to create two separate `.qmd` files in the same post directory (e.g., `index.qmd` for Chinese, `index_en.qmd` for English) and cross-link them.

## Deployment

Rendered HTML is committed to `docs/` and served via GitHub Pages from the `main` branch. After running `quarto render`, commit and push the `docs/` changes.

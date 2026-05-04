---
title: "How I Built This Portfolio with Hugo (and Why You Should Too)"
date: 2024-01-15
draft: false
tags: ["hugo", "portfolio", "web development"]
description: "A step-by-step guide to building a fast, free, and maintainable personal portfolio using Hugo and GitHub Pages."
---

After years of letting my portfolio gather digital dust, I finally rebuilt it using Hugo — a blazing-fast static site generator. Here's why I chose it and how you can do the same in a weekend.

## Why Hugo?

- **Speed**: Pages load in milliseconds — no database, no server-side rendering
- **Free hosting**: GitHub Pages and Vercel both offer free tier hosting
- **Easy to maintain**: Write content in Markdown, commit to Git, and you're done
- **Version controlled**: Your entire site lives in a Git repo

## Getting Started

Install Hugo (extended version required):

```bash
# macOS
brew install hugo

# Ubuntu/WSL
sudo apt install hugo
```

Clone this theme and follow the README...

## Deployment

The GitHub Actions workflow in `.github/workflows/deploy.yml` handles everything automatically. Push to `main` → site rebuilds and deploys. That's it.

Happy hacking! 🚀

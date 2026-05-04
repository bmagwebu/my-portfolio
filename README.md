# 🌐 My Portfolio — Hugo + Adritian Theme

A fast, free, beautiful personal portfolio built with [Hugo](https://gohugo.io/) and the
[Adritian](https://github.com/zetxek/adritian-free-hugo-theme) theme.
Hosted on **GitHub Pages** (100% free, auto-deploys on every push).

---

## 🚀 Deployment (one-time setup, ~10 minutes)

### Step 1 — Fork / create this repo on GitHub

1. Create a **new public repository** on GitHub called `my-portfolio`
2. Push these files to the `main` branch

### Step 2 — Enable GitHub Pages

1. Go to your repo → **Settings → Pages**
2. Under *Build and deployment*, set Source to **GitHub Actions**
3. That's it! The workflow in `.github/workflows/deploy.yml` does everything else.

Your live URL will be: `https://YOUR_USERNAME.github.io/my-portfolio/`

> **Important:** Update `baseURL` in `hugo.toml` to match your URL before pushing.

---

## ✏️ How to Personalise

All content is plain Markdown and YAML — no coding required.

| File | What it controls |
|---|---|
| `hugo.toml` | Site title, your name, base URL |
| `content/home/homepage.yml` | Hero, about, education, testimonials, contact |
| `content/experience/job-*.md` | Work history (add/rename files freely) |
| `content/projects/*.md` | Portfolio items |
| `content/skills/_index.md` | Skills with percentage bars |
| `content/blog/*.md` | Blog articles |
| `static/images/avatar.png` | **Replace with your photo** |
| `static/images/works/*.jpg` | **Replace with project screenshots** |

---

## 💻 Local Development

### Prerequisites
- [Hugo Extended](https://gohugo.io/installation/) v0.123+
- [Node.js](https://nodejs.org/) v18+
- [Go](https://go.dev/dl/) v1.21+ (for Hugo modules)

### Run locally

```bash
npm install          # install Bootstrap (required by theme)
hugo server -D       # start dev server at http://localhost:1313
```

### Build for production

```bash
hugo --minify
```
Output goes into the `public/` folder.

---

## 📸 Replacing Placeholder Images

| Image | Recommended size |
|---|---|
| `static/images/avatar.png` | 400 × 400 px (square) |
| `static/images/works/work*.jpg` | 800 × 533 px (3:2 ratio) |
| `static/images/testimonials/*.png` | 120 × 120 px (square) |

---

## 📬 Contact Form

The contact form uses [Formspree](https://formspree.io) (free for 50 submissions/month).

1. Sign up at [formspree.io](https://formspree.io)
2. Create a new form and copy your Form ID
3. Replace `YOUR_FORM_ID` in `content/home/homepage.yml`

---

## 🎨 Theme

Powered by [Adritian Free Hugo Theme](https://github.com/zetxek/adritian-free-hugo-theme)
by Adrián Moreno Peña — MIT licensed.

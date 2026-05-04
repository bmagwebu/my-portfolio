# 🌐 My Portfolio — Hugo + Adritian Theme

A fast, free, beautiful personal portfolio built with [Hugo](https://gohugo.io/)
and the [Adritian](https://github.com/zetxek/adritian-free-hugo-theme) theme.
Auto-deploys for free on **GitHub Pages** or **Vercel** on every `git push`.

---

## ⚡ Quick Start (local dev)

```bash
bash setup.sh
```

The script checks all prerequisites, installs dependencies, and launches your
local dev server at `http://localhost:1313`. That's it.

**Prerequisites** (the script will tell you what's missing):
- [Hugo Extended](https://gohugo.io/installation/) v0.123+
- [Go](https://go.dev/dl/) v1.21+
- [Node.js](https://nodejs.org/) v18+
- [Git](https://git-scm.com/)

---

## 🚀 Deploy — Option A: GitHub Pages (100% free)

### Step 1 — Create a GitHub repo
[github.com/new](https://github.com/new) → name it `my-portfolio` → **Public**

### Step 2 — Edit your URL in `hugo.toml`
```toml
baseURL = "https://YOUR_GITHUB_USERNAME.github.io/my-portfolio/"
```

### Step 3 — Push
```bash
git init
git add .
git commit -m "🚀 Initial portfolio"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/my-portfolio.git
git push -u origin main
```

### Step 4 — Enable GitHub Pages
Repo → **Settings → Pages → Source → GitHub Actions**

✅ Live at `https://YOUR_USERNAME.github.io/my-portfolio/` in ~2 minutes.

> The `update-modules` workflow runs automatically on first push and commits
> the required `go.sum` file. The `deploy` workflow then runs and publishes
> your site.

---

## 🚀 Deploy — Option B: Vercel (alternative, also free)

1. Push your repo to GitHub (steps 1 & 3 above, skip step 4)
2. Go to [vercel.com/new](https://vercel.com/new)
3. Import your GitHub repo
4. Vercel auto-detects Hugo — just click **Deploy**
5. Your site is live on a `*.vercel.app` URL instantly

The `vercel.json` in this repo handles all configuration automatically.

---

## ✏️ How to Personalise (no coding required)

All content is plain Markdown and YAML.

| File | What it controls |
|---|---|
| `hugo.toml` | Site title, your name, base URL |
| `content/home/homepage.yml` | **Everything on the home page** — hero, bio, education, testimonials, contact. Edit this most. |
| `content/experience/job-*.md` | Work history — rename, add or remove files freely |
| `content/projects/*.md` | Portfolio items |
| `content/skills/_index.md` | Skills with percentage bars |
| `content/blog/*.md` | Blog articles |

### Images to replace

| File | Recommended size | Notes |
|---|---|---|
| `static/images/avatar.png` | 400 × 400 px | Your photo — square crop works best |
| `static/images/works/work1–4.jpg` | 800 × 533 px | Project screenshots |
| `static/images/testimonials/*.png` | 120 × 120 px | Headshots of people who endorsed you |

---

## 📬 Setting Up the Contact Form

The contact form uses [Formspree](https://formspree.io) (free for 50 submissions/month).

1. Sign up at [formspree.io](https://formspree.io)
2. Create a new form → copy your Form ID (looks like `xabcdefg`)
3. In `content/home/homepage.yml` replace:
   ```yaml
   action: "https://formspree.io/f/YOUR_FORM_ID"
   ```

---

## 🏗 Project Structure

```
my-portfolio/
├── .github/workflows/
│   ├── deploy.yml            ← Auto-deploy to GitHub Pages on push
│   └── update-modules.yml    ← Auto-generate go.sum on first push
├── content/
│   ├── home/homepage.yml     ← ✏️  MAIN CONTENT FILE — edit this
│   ├── experience/           ← ✏️  Job history (one .md per job)
│   ├── projects/             ← ✏️  Portfolio items (one .md each)
│   ├── skills/_index.md      ← ✏️  Skills + percentages
│   ├── blog/                 ← ✏️  Blog posts
│   ├── testimonial/          ← ✏️  Endorsements
│   └── showcase/_index.md    ← Showcase/projects page
├── static/images/            ← ✏️  Replace placeholder images
├── hugo.toml                 ← ✏️  Site config + menu
├── vercel.json               ← Vercel deployment config
├── go.mod                    ← Hugo module definition
├── package.json              ← Bootstrap dependency
└── setup.sh                  ← Local setup script
```

---

## 🎨 Theme

[Adritian Free Hugo Theme](https://github.com/zetxek/adritian-free-hugo-theme)
by Adrián Moreno Peña — MIT licensed, actively maintained.

Features: dark/light mode toggle · responsive · blog · portfolio · multi-language ·
skills bars · contact form · fast (95+ Lighthouse score).

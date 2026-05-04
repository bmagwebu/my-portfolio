#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────
#  PORTFOLIO SETUP SCRIPT
#  Checks prerequisites and gets your local dev server running.
#  Usage:  bash setup.sh
# ─────────────────────────────────────────────────────────────────
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; NC='\033[0m'
ok()   { echo -e "${GREEN}  ✓  $1${NC}"; }
warn() { echo -e "${YELLOW}  ⚠  $1${NC}"; }
err()  { echo -e "${RED}  ✗  $1${NC}"; }
info() { echo -e "${CYAN}  →  $1${NC}"; }

echo ""
echo -e "${CYAN}╔══════════════════════════════════════════╗"
echo -e "║   Portfolio Setup & Prerequisite Check   ║"
echo -e "╚══════════════════════════════════════════╝${NC}"
echo ""

MISSING=0

# ── Check Hugo ───────────────────────────────────────────────────
if command -v hugo &>/dev/null; then
  HUGO_VER=$(hugo version | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1)
  if hugo version | grep -q "extended"; then
    ok "Hugo Extended found ($HUGO_VER)"
  else
    err "Hugo is installed but NOT the Extended edition (required for SCSS)"
    warn "Install Hugo Extended from: https://gohugo.io/installation/"
    MISSING=1
  fi
else
  err "Hugo not found"
  echo ""
  echo "  Install Hugo Extended:"
  echo "    macOS:   brew install hugo"
  echo "    Ubuntu:  snap install hugo --channel=extended"
  echo "    Windows: winget install Hugo.Hugo.Extended"
  echo "    All:     https://gohugo.io/installation/"
  MISSING=1
fi

# ── Check Go ─────────────────────────────────────────────────────
if command -v go &>/dev/null; then
  GO_VER=$(go version | awk '{print $3}')
  ok "Go found ($GO_VER) — required for Hugo modules"
else
  err "Go not found (required for Hugo modules)"
  warn "Install Go from: https://go.dev/dl/"
  MISSING=1
fi

# ── Check Node.js ────────────────────────────────────────────────
if command -v node &>/dev/null; then
  NODE_VER=$(node --version)
  ok "Node.js found ($NODE_VER)"
else
  err "Node.js not found (required for Bootstrap)"
  warn "Install from: https://nodejs.org/"
  MISSING=1
fi

# ── Check Git ────────────────────────────────────────────────────
if command -v git &>/dev/null; then
  ok "Git found"
else
  err "Git not found"
  warn "Install from: https://git-scm.com/"
  MISSING=1
fi

echo ""

if [ "$MISSING" -ne 0 ]; then
  err "Please install the missing tools above, then re-run this script."
  exit 1
fi

# ── Install npm dependencies ──────────────────────────────────────
info "Installing npm dependencies (Bootstrap)..."
npm install
ok "npm dependencies installed"

# ── Download Hugo modules ─────────────────────────────────────────
info "Downloading Hugo theme module (Adritian)..."
GONOSUMCHECK="*" GONOSUMDB="*" GOFLAGS="-mod=mod" go mod download
ok "Hugo modules downloaded"

# ── Done ──────────────────────────────────────────────────────────
echo ""
echo -e "${GREEN}╔══════════════════════════════════════════╗"
echo -e "║         Everything is ready! 🎉          ║"
echo -e "╚══════════════════════════════════════════╝${NC}"
echo ""
echo "  Before starting, edit these files:"
echo ""
echo "  1. hugo.toml            → set your name and GitHub Pages URL"
echo "  2. content/home/homepage.yml → update bio, social links, contact"
echo "  3. content/experience/  → replace job-*.md with your own history"
echo "  4. static/images/avatar.png → replace with your photo"
echo ""
info "Starting local dev server at http://localhost:1313 ..."
echo "     (Press Ctrl+C to stop)"
echo ""
GONOSUMCHECK="*" GONOSUMDB="*" GOFLAGS="-mod=mod" hugo server -D

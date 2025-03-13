#!/bin/bash

# 1. Safety check for project name
if [ -z "$1" ]; then
  echo "❗ Please provide a project name!"
  echo "Usage: bash scaffold.sh my-project"
  exit 1
fi

echo "🚀 Setting up Next.js App Router + Tailwind for project: $1"

# 2. Create Next.js App Router project with Tailwind, no src dir, skip prompts
npx create-next-app@latest $1 \
  --typescript \
  --eslint \
  --app \
  --tailwind \
  --no-src-dir \
  --import-alias "@/*"

cd $1 || exit

# 3. Create folder structure
mkdir -p components
mkdir -p layouts
mkdir -p lib
mkdir -p data
mkdir -p public/assets/images
mkdir -p public/assets/avatars
mkdir -p public/assets/projects

# 4. Confirm Tailwind already set up
echo "✅ TailwindCSS installed and configured!"
echo "👉 If you want to customize: edit tailwind.config.js and app/globals.css"

# 5. Create README.md
echo "# $1

Project scaffolded with Next.js App Router + TailwindCSS 🚀  
" > README.md

echo "✅ Project '$1' is ready! Run: cd $1 && npm run dev 🚀"

# Attribution
echo "📝 Content in this script was generated with assistance from GPT-40 and curated by Yixuan Wang  
📅 Created on: March 12th, 2025  
📅 Last updated: March 13th, 2025  
"

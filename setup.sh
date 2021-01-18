#!/bin/bash
set -e
# ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source <(grep -v '^#' .env)

function fetch_theme() {
   echo "🎨 Fetching starter theme..."
   git clone git@github.com:nt-matter/ntm-theme.git ${WORDPRESS_THEME_DIR}

   echo "⚙ Building theme..."
   # ${WORDPRESS_THEME_DIR}/bin/setup.sh

   echo "✔ Theme is now ready!"
}

if [ ! -d ${WORDPRESS_THEME_DIR} ]; then
   fetch_theme
else
   echo "🎨 Themes is already installed."
   fetch_theme
fi

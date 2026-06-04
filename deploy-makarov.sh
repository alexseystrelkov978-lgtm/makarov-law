#!/bin/bash
# Основной деплой: alexseystrelkov978-lgtm/makarov-law → legalconsult.art
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

ALEX_TOKEN="${MAKAOV_DEPLOY_TOKEN:-}"
if [[ -z "$ALEX_TOKEN" ]]; then
  ALEX_TOKEN=$(python3 -c "
import re
from pathlib import Path
t = Path.home().joinpath('.git-credentials').read_text()
m = re.search(r'https://alexseystrelkov978-lgtm:([^@]+)@', t)
print(m.group(1) if m else '')
" 2>/dev/null || true)
fi

if [[ -z "$ALEX_TOKEN" ]]; then
  echo "Нужен токен GitHub от alexseystrelkov978-lgtm:"
  echo "  export MAKAOV_DEPLOY_TOKEN=ghp_..."
  echo "  ./deploy-makarov.sh"
  exit 1
fi

REMOTE="https://${ALEX_TOKEN}@github.com/alexseystrelkov978-lgtm/makarov-law.git"
git push "$REMOTE" main

echo ""
echo "Готово (основной сайт):"
echo "  https://legalconsult.art/          (после DNS)"
echo "  https://alexseystrelkov978-lgtm.github.io/makarov-law/"
echo ""
echo "DNS для www: CNAME → alexseystrelkov978-lgtm.github.io"
echo "DNS для @:   A → 185.199.108.153 … 185.199.111.153"

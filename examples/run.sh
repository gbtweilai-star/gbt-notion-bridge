#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_notion_bridge info
PYTHONPATH=src python -m gbt_notion_bridge check --payload '{}'
PYTHONPATH=src python -m gbt_notion_bridge run   --payload '{}'

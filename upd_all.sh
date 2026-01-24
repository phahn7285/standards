#!/usr/bin/env zsh

REPOS=(adminer butterfly db-api docker-api docs docsify-server kafka kafka-api kafka-ui metabase netdata nginx polygonio react cadvisor) && \
for r in "${REPOS[@]}"; do \
  p="$HOME/$r"; \
  [ -d "$p/.git" ] || { echo "SKIP (not a git repo): $r"; continue; }; \
  cd "$p" || { echo "SKIP (cd failed): $r"; continue; }; \
  if [ ! -f .gitmodules ] || ! git config -f .gitmodules --get submodule.standards.path >/dev/null 2>&1; then \
    echo "SKIP (no standards submodule): $r"; \
    continue; \
  fi; \
  BRANCH="$(git symbolic-ref --quiet --short HEAD 2>/dev/null || echo main)"; \
  git fetch origin || true; \
  git submodule sync -- standards || true; \
  git config -f .gitmodules submodule.standards.branch main; \
  git submodule update --init --remote --merge standards || true; \
  if ! git diff --quiet || ! git diff --cached --quiet; then \
    git add .gitmodules standards; \
    git commit -m "Update standards submodule" || true; \
    git push origin "$BRANCH" || true; \
    echo "UPDATED: $r"; \
  else \
    echo "NO CHANGE: $r"; \
  fi; \
done


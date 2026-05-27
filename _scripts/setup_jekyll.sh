#!/usr/bin/env bash
set -euo pipefail

if ! command -v ruby >/dev/null 2>&1; then
  echo "Ruby is required but not installed."
  exit 1
fi

RUBY_API_VERSION="$(ruby -e 'print RbConfig::CONFIG["ruby_version"]')"
USER_BUNDLE_BIN="$HOME/.gem/ruby/${RUBY_API_VERSION}/bin/bundle"

if [ ! -x "$USER_BUNDLE_BIN" ]; then
  echo "Installing Bundler (user-local)..."
  gem install bundler -v 2.4.22 --user-install
fi

if [ -x "$USER_BUNDLE_BIN" ]; then
  BUNDLE_CMD="$USER_BUNDLE_BIN"
elif command -v bundle >/dev/null 2>&1; then
  BUNDLE_CMD="bundle"
else
  echo "Bundler install did not produce an executable on PATH."
  exit 1
fi

echo "Using bundler: $BUNDLE_CMD"
"$BUNDLE_CMD" config set --local path vendor/bundle
"$BUNDLE_CMD" config set --local force_ruby_platform true
"$BUNDLE_CMD" install

echo
echo "Setup complete. Run the site with:"
echo "  $BUNDLE_CMD exec jekyll serve"

# Personal Website
This repository controls the content for my personal webpage found at [abatedemey.com](https://abatedemey.com). 

This website is hosted using github-pages. The design of the webpage is based on the theme [Hyde](https://github.com/poole/hyde), an open source template used with [Jekyll](https://jekyllrb.com/docs/)

## Local Setup
1. Ensure Ruby is installed (`ruby -v`).
2. Run:
   - `_scripts/setup_jekyll.sh`
3. (Optional) Add user gem bin to PATH for easier `bundle` usage:
   - `export PATH="$HOME/.gem/ruby/$(ruby -e 'print RbConfig::CONFIG["ruby_version"]')/bin:$PATH"`

This installs a repo-local Bundler environment in `vendor/bundle`.

## Developing
- Build once:
  - `bundle exec jekyll build`
- Run local server:
  - `bundle exec jekyll serve`

## Publishing
- `bundle exec jekyll build --destination docs/`

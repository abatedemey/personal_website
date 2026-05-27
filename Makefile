RUBY_API_VERSION := $(shell ruby -e 'print RbConfig::CONFIG["ruby_version"]')
BUNDLE := $(HOME)/.gem/ruby/$(RUBY_API_VERSION)/bin/bundle

.PHONY: build run publish clean

vendor/bundle: Gemfile Gemfile.lock
	bash _scripts/setup_jekyll.sh

build: vendor/bundle
	$(BUNDLE) exec jekyll build

run: vendor/bundle
	$(BUNDLE) exec jekyll serve

publish: vendor/bundle
	$(BUNDLE) exec jekyll build --destination docs/

clean:
	rm -rf _site

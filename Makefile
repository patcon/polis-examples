check:
	@echo Checking if required binaries installed...
	@command -v ruby > /dev/null || echo Ruby runtime is missing. Please install.
	@command -v gem > /dev/null || echo Rubygems package manager is missing. Please install.
	@command -v bundle > /dev/null || echo Bundler package version manager is missing. Please install.
	@echo All required binaries are installed!

setup: check
	@echo Installing Jekyll via bundler...
	cd docs && bundle install

start:
	cd docs && bundle exec jekyll serve

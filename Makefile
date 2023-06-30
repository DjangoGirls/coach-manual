node_modules:
	@npm install

check: package.json book.json
	@if ! which node 1> /dev/null; then\
		echo "Error: Node.js not found";\
		echo " * Please install/reinstall NodeJS on your system.";\
		echo " * NVM is recommended for installation (https://github.com/nvm-sh/nvm).";\
		false;\
	fi

build: setup
	@npx honkit build

build-dev: setup
	@npx honkit build --log=debug

serve: setup
	@npx honkit serve

dev: setup
	@npx honkit serve --log=debug

.PHONY: check build build-dev serve dev
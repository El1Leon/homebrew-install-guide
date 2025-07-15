.PHONY: setup doctor update

setup:
	@./setup_homebrew.sh

doctor:
	@brew doctor

update:
	@brew update

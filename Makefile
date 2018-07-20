.PHONY: help init fetch pull

help:
	$(info make init   - initialize all modules)
	$(info make pull   - pull all modules)
	@printf "\n"

init:
	git submodule update --init
	git submodule foreach git checkout master

pull:
	git submodule foreach 'git pull --ff-only || true'

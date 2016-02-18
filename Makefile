.PHONY: help init fetch pull

help:
	$(info make init   - initialize all modules)
	$(info make fetch  - fetch all modules)
	$(info make pull   - pull all modules)
	@printf "\n"

init:
	git submodule update --init
	git submodule foreach git checkout master
	git submodule foreach git branch -u origin/master

fetch:
	git pull --recurse-submodules

pull:
	git submodule foreach 'git pull --ff-only || true'

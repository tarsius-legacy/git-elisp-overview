.PHONY: init pull

init:
	git submodule update --init
	git submodule foreach git checkout master
	git submodule foreach git branch -u origin/master

fetch:
	git pull --recurse-submodules

pull:
	git pull --recurse-submodules
	git submodule foreach git pull

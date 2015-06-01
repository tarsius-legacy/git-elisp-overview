.PHONY: init pull

init:
	git submodule update --init
	git submodule foreach git checkout master
	git submodule foreach git branch -u origin/master

pull:
	git pull --recurse-submodules
	git submodule foreach git pull

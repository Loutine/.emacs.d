configdir = init/
rootdir = ./
commit:
	git add .
	git commit -m "update"
	
.PHONY: clean
clean:
	find $(configdir) -name ".*~" -exec rm '{}' \;
	find $(configdir) -name ".*#" -exec rm '{}' \;
	find $(configdir) -name ".*eld" -exec rm '{}' \;
	find $(configdir) -name ".*cache" -exec rm '{}' \;
	find $(rootdir) -maxdepth 1 -name "#*" -exec rm '{}' \;
	find $(rootdir) -maxdepth 1 -name "%*" -exec rm '{}' \;
	find $(rootdir) -maxdepth 1 -name "*~" -exec rm '{}' \;

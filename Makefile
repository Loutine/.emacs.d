configdir = init/
commit:
	git add .
	git commit -m "update"
	
.PHONY: clean
clean:
	find $(configdir) -iregex ".*~" -exec rm '{}' \;
	find $(configdir) -iregex ".*#" -exec rm '{}' \;
	find $(configdir) -iregex ".*eld" -exec rm '{}' \;
	find $(configdir) -iregex ".*cache" -exec rm '{}' \;

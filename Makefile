clean:
	find -iregex ".*~" -exec rm '{}' \;
	find -iregex ".*#" -exec rm '{}' \;
	find -iregex ".*eld" -exec rm '{}' \;
	find -iregex ".*cache" -exec rm '{}' \;

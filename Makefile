clean:
	find -iregex ".*~" -exec rm '{}' \;
	find -iregex ".*#" -exec rm '{}' \;
	find -iregex ".*[old|cache]" '{}' \;

watch:
	rm -rf _cache
	rm -rf _site
	stack build && stack exec site watch

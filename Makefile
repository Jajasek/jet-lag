all: jet-lag.pdf

# the `force` target does nothing, but is always out-of-date and therefore
# forces `make` to run `latexmk`. It has its own logic which checks for the
# need of recompiling.
%.pdf: force
	latexmk $*.tex -interaction=nonstopmode -halt-on-error -synctex=1

sanitize:
	find . -type f -name "*.tex" -exec sed -i 's/[[:space:]]\+$$//' {} +

clean:
	rm -rf tmp
	rm -f *.synctex.gz
	rm -f *.pdf

# mark targets which don't correspond to a file, therefore are always
# considered out-of-date
.PHONY: force all sanitize clean

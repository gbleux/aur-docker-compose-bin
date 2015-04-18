BINNAME := docker-compose
MAKEPKG := /usr/bin/makepkg

.PHONY: default
default: build

.PHONY: build
build:
	$(MAKEPKG)

.PHONY: dist
dist:
	$(MAKEPKG) --source

.PHONY: clean
clean: pkg-clean dist-clean
	$(RM) $(BINNAME).bash
	$(RM) $(BINNAME)
	$(RM) -r pkg/
	$(RM) -r src/

.PHONY: pkg-clean
pkg-clean:
	$(RM) $(BINNAME)-bin-*.pkg.tar.xz

.PHONY: dist-clean
dist-clean:
	$(RM) $(BINNAME)-bin-*.src.tar.gz

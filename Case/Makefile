.PHONY: all clean

SCAD_FILES := $(wildcard *.scad)
DXF_FILES  := $(patsubst %.scad,%.dxf,$(SCAD_FILES))
SVG_FILES  := $(patsubst %.scad,%.svg,$(SCAD_FILES))

all: $(DXF_FILES) $(SVG_FILES)

%.dxf: %.scad
	openscad -o $@ $^

%.svg: %.scad
	openscad -o $@ $^

clean:
	rm -f $(DXF_FILES)
	rm -f $(SVG_FILES)

.PHONY: all clean

SCAD_FILES := $(wildcard *.scad)
DXF_FILES  := $(patsubst %.scad,%.dxf,$(SCAD_FILES))
STL_FILES  := $(patsubst %.scad,%.stl,$(SCAD_FILES))
SVG_FILES  := $(patsubst %.scad,%.svg,$(SCAD_FILES))

EXTRUDE_HEIGHT ?= 5

all: $(DXF_FILES) $(STL_FILES) $(SVG_FILES)

%.dxf: %.scad
	openscad -o $@ $^ -D 'lid();'

%.stl: %.scad
	openscad -o $@ $^ -D 'linear_extrude(height = $(EXTRUDE_HEIGHT)) lid();'

%.svg: %.scad
	openscad -o $@ $^ -D 'lid();'

clean:
	rm -f $(DXF_FILES)
	rm -f $(STL_FILES)
	rm -f $(SVG_FILES)

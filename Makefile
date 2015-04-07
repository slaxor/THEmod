#  Copyright (c) 2015 Sascha Teske <sascha.teske@gmail.com>


#FOO       ?= cmdlineparam
SCAD       = openscad
SLIC3R     = slic3r
BUILDDIR   = build
SCADFILES  = $(wildcard *.scad)
STLFILES   = $(addprefix $(BUILDDIR)/,$(notdir $(SCADFILES:.scad=.stl)))
GCODEFILES = $(addprefix $(BUILDDIR)/,$(notdir $(SCADFILES:.scad=.gcode)))


all: $(STLFILES) $(GCODEFILES)

$(BUILDDIR)/%.stl: %.scad
	$(SCAD) -o $@ $<

$(BUILDDIR)/%.gcode: $(BUILDDIR)/%.stl
	$(SLIC3R) -o $@ $<

clean:
	rm -f $(BUILDDIR)/*.stl $(BUILDDIR)/*.gcode


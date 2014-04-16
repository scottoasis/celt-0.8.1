dmd=@ldmd2 # you can specify your dmd binary name here
outdir=out

.PHONY: all outdir

all: $(outdir)
	$(dmd) celt celt_header celt_types -c -oflibcelt.o -od$(outdir)

$(outdir):
	@mkdir -p $@

clean:
	@rm -rf $(outdir)

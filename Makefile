CVs = zbiberle

all: $(addsuffix .pdf, ${CVs})

%.pdf: %.tex
	lualatex $<

clean:
	rm $(addsuffix .aux, ${CVs}) $(addsuffix .log, ${CVs}) $(addsuffix .out, ${CVs}) $(addsuffix .pdf, ${CVs})

.PHONY: clean

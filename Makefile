CVs = zbiberle

all: $(addsuffix .pdf, ${CVs})

%.pdf: %.tex yaac-another-awesome-cv.cls zbiberle-foto.jpeg
	lualatex $<

clean:
	rm $(addsuffix .aux, ${CVs}) $(addsuffix .log, ${CVs}) $(addsuffix .out, ${CVs}) $(addsuffix .pdf, ${CVs})

.PHONY: clean

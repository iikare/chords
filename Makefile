GENFILES = secA secB secC secD

all: chords

chords:
	pdflatex --shell-escape chords.tex
	rm -f chords.aux chords.log texput.log chords.out chords.nav chords.snm chords.toc
	rm -f $(addsuffix .*, $(GENFILES))

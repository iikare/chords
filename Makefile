GENFILES = secA secB secC secD

NAME = $(basename $(wildcard *.tex))

all: $(NAME)

$(NAME):
	pdflatex --shell-escape $(NAME).tex
	rm -f $(NAME).aux $(NAME).log texput.log $(NAME).out $(NAME).nav $(NAME).snm $(NAME).toc
	rm -f $(addsuffix .*, $(GENFILES))

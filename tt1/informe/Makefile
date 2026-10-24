MATERIA := $(notdir $(abspath $(CURDIR)/../..))
TP      := $(notdir $(abspath $(CURDIR)/..))
TIPO    := $(notdir $(CURDIR))
OUTPUT  := $(MATERIA)_$(TP)_$(TIPO)

SRC := main.tex

all:
	latexmk -pdf -jobname=$(OUTPUT) $(SRC)

clean:
	latexmk -CA -jobname=$(OUTPUT) $(SRC)

FILE = vo-manuscript.odt

all: $(FILE)

%.odt: %.md
	rm -f $@
	pandoc $? -o $@
	chmod ugo-w $@

clean:
	rm -f $(FILE)


all: index.html $(foreach s,$(wildcard *.adoc),$(s:.adoc=.html))

.PHONY: all clean

clean:
	rm *.html

index.html: README.adoc Makefile
	asciidoctor -b html5 -o $@ $<

%.html: %.adoc Makefile
	asciidoctor -b html5 -o $@ $<

all: index.html

index.html: README.adoc Makefile
	asciidoctor -b html5 -o $@ $<

all: build run
build:
	asciidoctor-revealjs presentation.adoc	
run:
	open presentation.html
clean:
	rm *.html

all: build run
bootstrap:
	npm i --save asciidoctor @asciidoctor/reveal.js
build:
	npx asciidoctor-revealjs presentation.adoc
run:
	open presentation.html
clean:
	rm *.html
	rm -rf reveal.js

.PHONY: bootstrap clean build run

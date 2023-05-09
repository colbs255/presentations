all: build run
bootstrap:
	npm i --save asciidoctor @asciidoctor/reveal.js
build:
	npx asciidoctor-revealjs content/*.adoc --destination-dir build 
clean:
	rm -rf build

.PHONY: bootstrap clean build run

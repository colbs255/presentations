attributes := -a revealjs_theme=white -a source-highlighter=highlightjs -a revealjsdir=../node_modules/reveal.js -a table-caption!
all: build
bootstrap:
	npm i --save asciidoctor @asciidoctor/reveal.js
build:
	npx asciidoctor-revealjs content/*.adoc --destination-dir build $(attributes)
clean:
	-rm -rf build

.PHONY: bootstrap clean build

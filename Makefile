attributes := -a revealjs_theme=white -a source-highlighter=highlightjs -a revealjsdir=../node_modules/reveal.js -a table-caption! -a revealjs_margin=.05 -a revealjs_height=800 -a revealjs_width=1000
all: build
bootstrap:
	npm i --save asciidoctor @asciidoctor/reveal.js
build:
	npx asciidoctor-revealjs content/*.adoc --destination-dir build $(attributes)
	npx asciidoctor index.adoc --destination-dir build
clean:
	-rm -rf build

.PHONY: bootstrap clean build

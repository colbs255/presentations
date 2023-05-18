attributes := -a revealjs_theme=white -a source-highlighter=highlightjs -a revealjsdir=../node_modules/reveal.js -a table-caption! -a revealjs_margin=.05 -a revealjs_height=800 -a revealjs_width=1000
all: build
bootstrap:
	npm i --save asciidoctor @asciidoctor/reveal.js
build:
	node scripts/build_adoc_index.js
	npx asciidoctor-revealjs content/*.adoc --destination-dir build $(attributes)
clean:
	-rm -rf build

.PHONY: bootstrap clean build

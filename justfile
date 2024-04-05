attributes := "\
    -a revealjs_theme=white \
    -a source-highlighter=highlightjs \
    -a table-caption! \
    -a revealjs_margin=.05 \
    -a revealjs_height=800 \
    -a revealjs_width=1000 \
    "

build:
    npm install
    mkdir -p build/node_modules
    node scripts/build_adoc_index.js
    npx asciidoctor-revealjs content/*.adoc --destination-dir build {{attributes}}
    npx asciidoctor build/index.adoc
    cp -r node_modules/reveal.js/ build/node_modules/reveal.js
run:
    xdg-open build/index.html
clean:
    -rm -rf build

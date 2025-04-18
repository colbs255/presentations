build:
    npm install
    mkdir -p build
    npx asciidoctor content/*.adoc
run:
    xdg-open build/index.html
clean:
    -rm -rf build

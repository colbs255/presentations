all: build run
reveal.js:
	echo Downloading reveal.js
	git clone -b 3.9.2 --depth 1 https://github.com/hakimel/reveal.js.git
	rm -rf reveal.js/.git
build: reveal.js
	asciidoctor-revealjs presentation.adoc	
run:
	open presentation.html
clean:
	rm *.html
	rm -rf reveal.js

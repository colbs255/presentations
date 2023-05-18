const fs = require('fs');
const path = require('node:path');
const asciidoctor = require('asciidoctor')()

const contentFolder = './content/';

function toAdocLink(title, fileName) {
    const htmlFileName = path.basename(fileName, ".adoc") + ".html";
    return "link:" + htmlFileName + "[" + title + "]";
}

function createAdoc(title, body) {
    return "= " + title
        + "\n\n"
        + body;
}

function run() {
    var body = "";
    fs.readdirSync(contentFolder).forEach(file => {
        const doc = asciidoctor.loadFile(contentFolder + file);
        const title = doc.getDocumentTitle();
        const link = toAdocLink(title, file);
        const line = ("* " + link + "\n");
        body += line;
    });

    const docText = createAdoc("Presentations", body);

    const filePath = contentFolder + "index.adoc";
    console.log("Writing index file to " + filePath);
    try {
        fs.writeFileSync(filePath, docText);
    } catch (err) {
        console.error(err);
    }
}
run();

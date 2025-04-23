var fs = require('fs');
var fm = require('front-matter');

const WIKI = '/Users/steven/Documents/notes/'

extractAll(function(data) {
    fs.writeFile(WIKI + "site/static/allFiles.json", JSON.stringify(data), () => {});
});

function extractAll(callback) {
    var frontMatterList = [];
    fs.readdir(WIKI + "notes/", function(err, files) {
        if (err) { throw err; }
        for (let i = 0; i < files.length; i++) {
            extract(WIKI + "notes/" + files[i], function(data) {
                data['relPath'] = files[i].substr(0, files[i].length - 3);
                frontMatterList.push(data);
                if (i == files.length - 1) { callback(frontMatterList); }
            });
        }
    });
}

function extract(filePath, callback) {
    fs.readFile(filePath, 'utf8', function(err, data) {
        if (err) { throw err; }
        callback(fm(data).attributes);
    });
}

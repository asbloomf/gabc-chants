var fs=require("fs");
var process = require("process");

processGabcFiles("c:\\src\\gabc-chants");


function processGabcFiles(path) {
  process.chdir(path);
  
  var files = fs.readdirSync(".");
  for (i in files) {
    var stat = fs.statSync(files[i])
    if(stat.isDirectory() && files[i][0] != "." && files[i] != "psalms") processGabcFiles(files[i]);
    else if(stat.isFile() && files[i].indexOf(".noEuouae.") < 0 && files[i].indexOf(".gabc") > 0) processGabcFile(files[i]);
  }

  process.chdir("..");
}

function processGabcFile(path) {
  var file = fs.readFileSync(path, {encoding:"utf8"});
  var outPath = path.replace(".gabc", ".noEuouae.gabc");

  var output = file.replace(/::\[em\d\][zZ]?(\[em\d\])?\)/, "::)");
  var endIdx = output.indexOf("<eu>");
  if(endIdx > 0) output = output.substring(0,endIdx);

  if(!fs.existsSync(outPath) || (output != fs.readFileSync(outPath, {encoding:"utf8"}))) {
    fs.writeFileSync(outPath, output);
    console.log(outPath);
  }
}

/*
var eng = fs.readFileSync("c:\\temp\\gabc\\english.txt", {encoding:"utf8"});
var gabc = fs.readFileSync("c:\\temp\\gabc\\gabc.txt", {encoding:"utf8"});

var gabcs = gabc.match(regex);
var output = "";

var idx = 0;
var key;
for(key in gabcs) {
    output += gabcs[key];
    output += '[';
    while(engs[idx].length === 0) ++idx;
    output += engs[idx++];
    output += ']';
}


fs.writeFileSync("c:\\temp\\gabc\\output.txt", output);
*/
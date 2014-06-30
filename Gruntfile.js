module.exports = function(grunt) {

	var fs = require('fs');
	var path = require('path');
	var pdfsYml = "";

	function ensureDir(dir) {
		if(dir.length === '') return;
		try {
			var stat = fs.statSync(dir);
			if(stat.isDirectory()) return;
		} catch(ex) {}
		ensureDir(path.dirname(dir));
		fs.mkdirSync(dir);
	}

	function copyFile(source, target, cb) {
		grunt.log.write(source + '\n');

		ensureDir(path.dirname(target));

		fs.writeFileSync(target, fs.readFileSync(source));
	}

	function addCategory(dirname) {
		if(pdfsYml.length > 0) pdfsYml += "\n";
		pdfsYml += dirname + ":" + "\n";
	}
	function strSplice(str, index, count, add) {
		return str.slice(0, index) + add + str.slice(index + count);
	}
	function convertName(filename) {
		return filename.replace(/([A-Z][a-z]*|\d*)/g, "$1 ");
	}
	function addItem(fpath) {
		var name = path.basename(fpath, '.pdf');
		fpath = path.join('pdfs/', fpath);
		pdfsYml += " - name: " + convertName(name) + "\n";
		pdfsYml += "   url: " + fpath + "\n";
		//grunt.log.write(name + '\n');
	}
	function writePdfsYml() {
		fs.writeFileSync('gh-pages/_data/pdfs.yml', pdfsYml);
	}

	function numericSort(a, b) {
		var numa = a.match(/\d+/);
		var numb = b.match(/\d+/);
		if(numa && numb) {
			return numb - numa;
		}
		return a < b? 1: a === b? 0: -1;
	}

	function listDirs(root) {
		var files = fs.readdirSync(root).sort(numericSort);
		var categoryAdded = false;

		for (var i = files.length - 1; i >= 0; i--) {
			var fn = root + '/' + files[i];
			var stats = fs.statSync(fn);
			if(stats.isFile()) {
				if(files[i].slice(-4).toLowerCase() == ".pdf") {
					// it is a PDF
					if(!categoryAdded) {
						addCategory(path.basename(root));
						categoryAdded = true;
					}

					copyFile(fn, "gh-pages/pdfs" + fn.slice(1), function(err) {
						grunt.log.write('F ' + fn + '\n');
						if(err) grunt.log.error(err);
					});
					addItem(fn);
				}
			} else if(stats.isDirectory()) {
				//grunt.log.write('D ' + fn + '\n');
				if(files[i][0] !== '.'
					&& files[i] !== 'gh-pages'
				) {
					listDirs(fn);
				}
			}
		}
	}

	grunt.registerTask('default', 'Log some stuff', function() {
		/*var files = fs.readdirSync(".");
		for (var i = files.length - 1; i >= 0; i--) {
			var stats = fs.statSync(files[i]);
			if(stats.isFile()) grunt.log.write('F ');
			if(stats.isDirectory()) grunt.log.write('D ');
			grunt.log.write(files[i] + '\n');
		}*/
		listDirs('.');
		writePdfsYml();
		grunt.log.ok();
	});

	// // Project configuration
	// grunt.initConfig({
	// 	pkg: grunt.file.readJSON('package.json'),
	// 	uglify: {
	// 		options: {
	// 			banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
	// 		},
	// 		build: {
	// 			src: 'src/<%= pkg.name %>.js',
	// 			dest: 'build/<%= pkg.name %>.min.js'
	// 		}
	// 	}
	// });

	// // Load the plugin that provides the "uglify" task.
	// grunt.loadNpmTasks('grunt-contrib-uglify');

	// // Default task(s)
	// grunt.registerTask('default', ['uglify']);

};
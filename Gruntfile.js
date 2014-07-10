module.exports = function(grunt) {

	var fs = require('fs');
	var path = require('path');
	var child_process = require('child_process');
	var jsyaml = require('js-yaml');
	var pdfsYml = "";
	var pdfsJson = {};

	grunt.loadNpmTasks('grunt-contrib-copy');
	grunt.loadNpmTasks('grunt-contrib-clean');

	grunt.initConfig({
		clean: {
			master: ["**/*.log", "**/*.aux", "**/*.gaux", "**/*.fdb_latexmk", "**/*.eps", "misc/magnificat-1D2-smc-?.pdf", "misc/magnificat-grassi-?.pdf", "misc/magnificat-protodiogenes-7a-?.pdf", "misc/*-systems.*"],
			ghpages: ["gh-pages/**/*.pdf"],
			all: ["**/*.pdf", "**/*.synctex.gz"]
		},
		copy: {
			pdfs: {
				expand: true,
				src: ["**/*.pdf", "!gh-pages/**/*", "!**/*test.pdf", "!**/test*", '!**/lauds.tex', '!**/nocturne*'],
				dest: "gh-pages/pdfs/",
			}
		},
		custom: {
			pdfs: {
				expand: true,
				src: ["**/*.pdf", "!gh-pages/**/*", "!**/*test.pdf", "!**/test*", '!**/lauds.tex', '!**/nocturne*'],
			}
		},
		gabc: {
			build: {
				expand: true,
				src: ['**/*.gabc', "!template*/**/*"]
			}
		},
		tex: {
			build: {
				expand: true,
				src: ['**/*.tex', '!psalms/**/*', '!template*/**/*', '!**/??--*', '!**/vr*', '!**/lesson?-*', '!**/Ant?-*', '!**/MagnificatAntiphon*'
				, '!**/Psalm*', '!**/*-MagAntiphon*', '!**/*vr.tex', '!**/*-test.tex', '!**/test.tex', '!**/lauds.tex', '!**/nocturne*']
			}
		},
		lilypond: {
			build: {
				expand: true,
				src: ['**/*.ly', '!**/header.ly']
			}
		}
	});

	/**
	 * Find insertion point for a value val, as specified by the comparator 
	 * (a function)
	 * @param sortedArr The sorted array
	 * @param val The value for which to find an insertion point (index) in the array
	 * @param comparator The comparator function to compare two values
	 */
	function findInsertionPoint(sortedArr, val, comparator) {   
	   var low = 0, high = sortedArr.length;
	   var mid = -1, c = 0;
	   while(low < high)   {
	      mid = parseInt((low + high)/2);
	      c = comparator(sortedArr[mid], val);
	      if(c > 0)   {
	         low = mid + 1;
	      }else if(c < 0) {
	         high = mid;
	      }else {
	         return mid;
	      }
	      //alert("mid=" + mid + ", c=" + c + ", low=" + low + ", high=" + high);
	   }
	   return low;
	}

	function ensureDir(dir) {
		if(dir.length === '') return;
		if(grunt.file.isDir(dir)) return;
		ensureDir(path.dirname(dir));
		grunt.file.mkdir(dir);
	}

	function strSplice(str, index, count, add) {
		return str.slice(0, index) + add + str.slice(index + count);
	}
	function convertName(filename) {
		return filename
			.replace(/_/g, ' ')
			.replace(/-main/, '')
			.replace(/([a-z\-]+|\d+)/g, "$1 ")
			.replace(/- /g, ': ')
			.replace(/ -/g, '')
			.trim();
	}
	function writePdfsYml() {
		grunt.file.write('gh-pages/_data/pdfs.yml', pdfsYml);
	}

	function numericSortNew(a, b) {
		return(numericSort(a.name, b.name));
	}
	function numericSort(a, b) {
		var numa = a.match(/\d+/);
		var numb = b.match(/\d+/);
		if(numa && numb) {
			return numb - numa;
		}
		return a < b? 1: a === b? 0: -1;
	}

	grunt.registerMultiTask('custom', 'debug stuff', function() {
		for (var i = this.filesSrc.length - 1; i >= 0; i--) {
			var srcpath = this.filesSrc[i];
			var cat = convertName(path.dirname(srcpath));
			if(!pdfsJson[cat]) pdfsJson[cat] = [];
			var name = convertName(path.basename(srcpath, '.pdf'));
			var fpath = path.join('pdfs/', srcpath);
			var newObj = {name: name, url: fpath};
			var idx = findInsertionPoint(pdfsJson[cat], newObj, numericSortNew);
			pdfsJson[cat].splice(idx, 0, newObj);
		};

		grunt.file.write('gh-pages/_data/pdfs.yaml', jsyaml.safeDump(pdfsJson));
		grunt.log.ok();
	});

	grunt.registerTask('default', ['clean:master', 'clean:ghpages', 'copy', 'custom']);

	grunt.registerTask('build', ['clean', 'gabc', 'lilypond', 'tex']);

	grunt.registerTask('all', ['build', 'default']);

	/*grunt.registerTask('default', 'Log some stuff', function() {
		var name = this.name || 'copyFiles'
		/*var files = fs.readdirSync(".");
		for (var i = files.length - 1; i >= 0; i--) {
			var stats = fs.statSync(files[i]);
			if(stats.isFile()) grunt.log.write('F ');
			if(stats.isDirectory()) grunt.log.write('D ');
			grunt.log.write(files[i] + '\n');
		}*/
		/*var targets = taskrun.init(name, {target: target});
		writePdfsYml();
		grunt.log.ok();
	});*/

	function processTexFile(files, done) {
		var index = 0;
		while(index < files.length) {
			if(path.extname(files[index]) === '.tex') {
				var tex = child_process.spawn('lualatex', ['--interaction=batchmode', files[index]]);
				tex.stdout.on('data', function(data) {
					grunt.log.write(data);
				});
				tex.stderr.on('data', function(data) {
					grunt.log.write(data);
				});
				tex.on('close', function(code) {
					grunt.log.write('exited with code ' + code + '\n');
					return processTexFile(files, index + 1, done);
				});
			}
			++index;
		}
		done();
	};

	function runFiles(cmd, args, files, done) {
		var idx = 0;
		var absPath = path.resolve('.');
		args.push('');
		grunt.log.writeln(absPath);
		function doneFunction() {
			if(idx >= files.length) {
				done(true);
				return;
			}
			//grunt.log.writeln(files[idx]);
			var dir = path.join(absPath, path.dirname(files[idx]));
			var file = path.basename(files[idx]);
			grunt.log.writeln(dir);
			grunt.log.writeln(file);
			grunt.file.setBase(dir);
			args[args.length-1] = file;
			grunt.util.spawn({cmd: cmd, args:args}, doneFunction);
			++idx;
		}

		doneFunction();
	}

	grunt.registerMultiTask('tex', 'build tex files', function() {
		var done = this.async();
		runFiles('lualatex', ['--interaction=batchmode'], this.filesSrc, done);
		//this.filesSrc.forEach(function(file) {
		//	grunt.log.writeln(file);
		//});
		//processTexFile(files, 0, done);
	});

	grunt.registerMultiTask('gabc', 'build gabc files', function() {
		var done = this.async();
		runFiles('gregorio', [], this.filesSrc, done);
	});

	grunt.registerMultiTask('lilypond', 'build ly files', function() {
		var done = this.async();
		runFiles('lilypond', [], this.filesSrc, done);
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
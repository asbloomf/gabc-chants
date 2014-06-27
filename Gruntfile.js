module.exports = function(grunt) {

	var fs = require('fs');
	var path = require('path');

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
		return;

		var cbCalled = false;

		var rd = fs.createReadStream(source);
		rd.on("error", done);

		var wr = fs.createWriteStream(target);
		wr.on("error", done);
		wr.on("close", function(ex) {
			done();
		});
		rd.pipe(wr);

		function done(err) {
			if(!cbCalled) {
				cb(err);
				cbCalled = true;
			}
		}
	}

	function listDirs(root) {
		var files = fs.readdirSync(root);
		for (var i = files.length - 1; i >= 0; i--) {
			var fn = root + '/' + files[i];
			var stats = fs.statSync(fn);
			if(stats.isFile()) {
				if(files[i].slice(-4).toLowerCase() == ".pdf") {
					// it is a PDF
					copyFile(fn, "gh-pages/pdfs" + fn.slice(1), function(err) {
						grunt.log.write('F ' + fn + '\n');
						if(err) grunt.log.error(err);
					});
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
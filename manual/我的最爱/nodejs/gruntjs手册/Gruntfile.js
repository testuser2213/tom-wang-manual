module.exports = function(grunt) {
  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
	transport: {
		src: {
			options: {
				idleading: 'flyjs/',
				debug: false,
				paths: ['.'],
			},
			src: ['src/*.js'],
			dest: '.tmp'
		}
	}
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-cmd-transport');
  grunt.loadNpmTasks('grunt-cmd-concat');

  grunt.registerTask('build', ['transport']);
};
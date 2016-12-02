/**
 * Dependencies
 */
var gulp          = require('gulp'),
    watch         = require('gulp-watch'),
    concat        = require('gulp-concat'),
    connect       = require('gulp-connect'),
    compass       = require('gulp-compass'),
    glob          = require('glob'),
    del           = require('del');


/**
 * CONFIG
 * Configuration vars
 */
var css_dir           = 'assets/stylesheets',     // Global styles directory
    scss_files        = css_dir +'/**/*.scss',    // Global styles files
    js_dir            = 'assets/javascripts',     // Global javascripts directory
    js_files          = js_dir + '/**/*.js';      // Global javascript files



/**
 * Javascripts
 * - Concat JS files in specific order.
 */
gulp.task('scripts', function () {
  var application_js = gulp.src([
    js_dir +'/libs/*.js',
    js_dir +'/ui/*.js'
  ])
      .pipe(concat('application.js'));

});


/**
 * CSS
 * - Compile and compress global styles using Compass.
 */
gulp.task('styles', function () {
  var application_css = gulp.src(css_dir +'/application.scss')
      .pipe(compass({ config_file: 'config.rb', sass: css_dir, css: css_dir }));
});


/**
 * Watch
 */
gulp.task('watch', function () {
  gulp.watch( scss_files, ['styles'] );
  gulp.watch(   js_files, ['scripts'] );
});


/**
 * SERVER
 * You can show the slides index on 'http://localhost:4567'.
 */
gulp.task('connect', function () {
  connect.server({
    root: '.',
    port: 4567
  });
});


/**
 * Default
 */
gulp.task('default', [ 'styles', 'scripts', 'watch', 'connect' ]);
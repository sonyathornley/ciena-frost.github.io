/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-app');
var Funnel = require('broccoli-funnel');

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    sassOptions: {
      includePaths: [
        'bower_components/bourbon/app/assets/stylesheets',
        'node_modules/frost-css/styles'
      ]
    }
  });

	var font = new Funnel('vendor/google/fonts/roboto', {
		srcDir: '/',
		include: ['**/*.woff2', '**/stylesheet.css'],
		destDir: '/assets/fonts'
	});

	return app.toTree(font);
};
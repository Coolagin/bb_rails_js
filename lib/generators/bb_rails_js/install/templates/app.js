//= require_self
//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree ./routers
//= require_tree ./templates

var <%= js_app_name %> = {
	debug: false,
	collections: {},
	models: {}, 
	views: {}, 
	templates: {},
	routes: {},

	initialize: function  (debugging) {
		(debugging === undefined ) ?  this.debug = false : this.debug=debugging;

		// blog.router = blog.routes <%= js_app_name %>.routes
		<%= js_app_name %>.Router = new <%= js_app_name %>.Router(<%= js_app_name %>.routes);

		Backbone.history.start({pushState: true});
	} ,

	log: function (msg) {
		if (this.debug) { console.log(msg); }
	},
}
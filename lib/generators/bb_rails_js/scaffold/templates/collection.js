<%= js_app_name %>.collections.<%= file_name.pluralize.capitalize %> = Backbone.Collection.extend({

	model: <%= js_app_name %>.models.<%= file_name.capitalize %>,
	url: '<%= route_url %>',

});

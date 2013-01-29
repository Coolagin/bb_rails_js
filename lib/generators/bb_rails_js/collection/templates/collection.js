<%= js_app_name %>.collections.<%= file_name.capitalize %> = Backbone.Collection.extend({
  <% unless model.empty? %>
	model: <%= js_app_name %>.models.<%= model.capitalize %>,
  <% end %>
	url: '<%= route_url %>',
});

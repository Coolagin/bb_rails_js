<%= js_app_name %>.Router = Backbone.Router.extend({
<% unless attributes.empty? -%>
	routes: {
	<% attributes.each do |attribute| -%>
		<%= attribute.name %> : <%= attribute.type %>,
	<% end -%>
	},
<% attributes.each do |attribute| %>
	<%= attribute.type %>: function(){
		//method code
	},
<% end %>
<% end -%>
});
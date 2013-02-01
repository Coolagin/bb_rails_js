<%= js_app_name %>.Router = Backbone.Router.extend({
	<% ways = {
		index: "#{file_name.pluralize}",
		show: "#{file_name.pluralize}/:id",
		new: "#{file_name.pluralize}/new",
		edit: "#{file_name.pluralize}/:id/edit",
	} %>
routes: {
<% ways.each do |way| -%>
	"<%= way[1] %>" : "<%= way[0] %>",
<% end -%>
},
<% ways.each do |way| %>
	<%= way[0] %>: function(){
		new <%= js_app_name %>.views.<%= way[0] %><%= file_name.capitalize %>
		//method code
	},
<% end %>
});
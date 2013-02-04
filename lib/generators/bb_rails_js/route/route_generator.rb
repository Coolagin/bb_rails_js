require 'generators/bb_rails_js/res_helpers'
class BbRailsJs::RouteGenerator < Rails::Generators::NamedBase
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)

  class_option "no_view", type: :boolean
  argument :attributes, :type => :array, :default => [], :banner => "route : name_function route:name_function"

  desc 'Add routing'
  def create_routing
  	unless options[:no_view] && attributes.nil?
  		attributes<<Rails::Generators::GeneratedAttribute.new("#{file_name.pluralize}","#{file_name}")
  	end

    template "route.js", "#{backbone_path}/routes/#{file_name}.js"
  end

  def create_view
  	template "view.js", "#{backbone_path}/views/#{file_name.pluralize}/#{file_name}.js" unless options[:no_view]
  end

end

require 'generators/bb_rails_js/res_helpers'
class BbRailsJs::RouteGenerator < Rails::Generators::NamedBase
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)

  argument :attributes, :type => :array, :default => [], :banner => "route : name_function route:name_function"

  desc 'Add routing'
  def create_routing
    template "route.js", "#{backbone_path}/routes/#{file_name}.js"
  end
end

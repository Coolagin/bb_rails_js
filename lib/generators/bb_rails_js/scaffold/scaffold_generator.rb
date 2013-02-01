require 'generators/bb_rails_js/res_helpers'
require 'generators/bb_rails_js/model/model_generator'
class BbRailsJs::ScaffoldGenerator < Rails::Generators::NamedBase
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)

  argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"



  def create_route
    template "route.js", "#{backbone_path}/routes/#{file_name}.js"
  end

  def create_model
    template "model.js", "#{backbone_path}/models/#{file_name}.js"
  end

  def create_collection
    template 'collection.js', "#{backbone_path}/collections/#{file_name}.js"
  end

  def create_view
    %w{index show new edit}.each do |way|
      @way=way
      template 'view.js', "#{backbone_path}/views/#{file_name}/#{way}.js"
      template 'template.html', "#{backbone_path}/templates/#{file_name}/#{way}.html"
    end
  end


end

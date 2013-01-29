require 'generators/bb_rails_js/res_helpers'

class BbRailsJs::ModelGenerator < Rails::Generators::NamedBase
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)

  desc 'This generator create backbone model'
  argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"

  def create_backbone_model
    template "model.js", "#{backbone_path}/models/#{file_name}.js"
  end
end

require 'generators/bb_rails_js/res_helpers'

class BbRailsJs::CollectionGenerator < Rails::Generators::NamedBase
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)

  desc 'Create Backbone collection'
  argument :model, :type => :string, :default => '', :banner => "model_name"

  def create_collection
  	template 'collection.js', "#{backbone_path}/collections/#{file_name}.js"
  end
end

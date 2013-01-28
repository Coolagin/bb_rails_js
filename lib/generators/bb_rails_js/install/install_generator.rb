require 'generators/bb_rails_js/res_helpers'

class BbRailsJs::InstallGenerator < Rails::Generators::Base
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)
  desc 'Install backbone struct'

  def create_dir_layout
    %W{routers models views templates}.each do |dir|
      empty_directory "app/assets/javascripts/backbone/#{dir}"
      create_file "app/assets/javascripts/backbone/#{dir}/.gitkeep" unless options[:skip_git]
    end
  end

  def create_app_file
    template "app.js", "app/assets/javascripts/backbone/#{application_name.underscore}.js"
  end
end

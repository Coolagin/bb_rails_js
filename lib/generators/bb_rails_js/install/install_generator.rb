require 'generators/bb_rails_js/res_helpers'

class BbRailsJs::InstallGenerator < Rails::Generators::Base
  include BbRailsJs::Generators::ResHelpers
  source_root File.expand_path('../templates', __FILE__)
  desc 'Install backbone struct'

  def including_backbone
    inject_into_file 'app/assets/javascripts/application.js', before: '//= require_tree' do 
      "//= require underscore\n//= require backbone\n//= require backbone/#{application_name.downcase}\n"
    end 
  end

  def install_app
    inject_into_file 'app/assets/javascripts/application.js', after: '//= require_tree .' do
      "\n\n$(document).ready(function() {\n\n   #{application_name.capitalize}.initialize(); \n\n});"
    end
  end

  def create_dir_layout
    %W{routes models collections views templates}.each do |dir|
      empty_directory "app/assets/javascripts/backbone/#{dir}"
      create_file "app/assets/javascripts/backbone/#{dir}/.gitkeep" unless options[:skip_git]
    end
  end

  def create_app_file
    template "app.js", "app/assets/javascripts/backbone/#{application_name.underscore}.js"
  end
end

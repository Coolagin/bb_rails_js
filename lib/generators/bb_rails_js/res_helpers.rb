module BbRailsJs
  module Generators
    module ResHelpers

      def backbone_path
        "app/assets/javascripts/backbone"
      end
      
      def js_app_name
        application_name.camelize
      end

      def application_name
        if defined?(Rails) && Rails.application
          Rails.application.class.name.split('::').first
        else
          "application"
        end
      end

    end
  end
end

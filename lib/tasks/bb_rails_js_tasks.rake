namespace :bb_rails_js do
  desc "Update source code underscore and backbone.js"
  task :update_bb do
    files = {
      'underscore.js'=>'http://underscorejs.org/underscore.js',
      'backbone.js' => 'http://backbonejs.org/backbone.js'
    }

    vendor_dir="vendor/assets/javascripts"
    require "open-uri"

    files.each do |local, remote|
      puts "Downloading #{local}"
      File.open "#{vendor_dir}/#{local}", 'w' do |f|
        f.write open(remote).read
      end
    end
  end
end

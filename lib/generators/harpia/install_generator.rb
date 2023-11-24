require 'rails/generators'

module HarpiaRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)
      desc 'Creates a Harpia config file.'
      def copy_config
        template 'harpia_config.rb', "#{Rails.root}/config/harpia.rb"
      end
    end
  end
end
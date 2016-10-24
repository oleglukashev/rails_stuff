require 'rails/generators'

module RailsStuff
  module Generators
    class ConcernGenerator < Rails::Generators::NamedBase # :nodoc:
      argument :base,
        type: :string,
        required: false,
        banner: 'Base dir with the class',
        description: 'Use it when class is not inside app/models or app/controllers.'

      namespace 'rails:concern'
      source_root File.expand_path('../templates', __FILE__)

      def create_concern_files
        template 'concern.rb', File.join(base_path, "#{file_path}.rb")
      end

      private

      def base_path
        base || file_path.include?('_controller/') ? 'app/controllers' : 'app/models'
      end
    end
  end
end

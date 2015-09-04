require 'rails_stuff/version'
require 'active_support/dependencies/autoload'

# Useful stuff for Rails.
module RailsStuff
  extend ActiveSupport::Autoload

  autoload :NullifyBlankAttrs
  autoload :ParamsParser
  autoload :RandomUniqAttr
  autoload :Statusable
  autoload :TypesTracker
end

require 'rails_stuff/railtie' if defined?(Rails::Railtie)

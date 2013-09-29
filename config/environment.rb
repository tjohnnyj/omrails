# Load the Rails application.
require File.expand_path('../application', __FILE__)

RAILS_GEM_VERSION = '3.2.11' unless defined? RAILS_GEM_VERSION
  RAILS_ENV=production bundle exec rake assets:precompile
# Initialize the Rails application.
Omrails::Application.initialize!

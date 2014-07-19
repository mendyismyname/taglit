# Load the rails application
ENV['GEM_PATH'] = '/path/to/your/home/ruby/gems:/lib/ruby/gems/1.9.3'
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Taglit::Application.initialize!

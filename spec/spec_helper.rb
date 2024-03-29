require 'rspec'
require './main'

Dir[('./spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate

  config.mock_with :rspec
end

require 'rack/test'
require 'support/sequel'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

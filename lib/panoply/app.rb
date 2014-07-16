require 'sinatra'
require 'panoply/routes/root'
require 'panoply/routes/conversations'

module Panoply
  class App < Sinatra::Application
    configure do
      disable :method_override
      disable :static

      set :one_year, 31557600
      set :sessions, httponly: true, secure: production?,
        expire_after: one_year, secret: ENV['SESSION_SECRET'] || 'default'
    end

    use Rack::Deflater
    use Panoply::Routes::Root
    use Panoply::Routes::Conversations
  end
end

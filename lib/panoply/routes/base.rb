require 'sinatra'

module Panoply
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, 'panoply/views'
      end
    end
  end
end

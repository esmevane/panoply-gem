require 'panoply/routes/base'

module Panoply
  module Routes
    class Root < Base
      get '/' do
        "Hey"
      end
    end
  end
end

module Panoply
  class Registry
    attr_accessor :contents

    def initialize contents = {}
      @contents = contents
    end

    def assign key, value
      contents[key] = value
    end

    def retrieve key
      contents.fetch key, nil
    end

  end
end

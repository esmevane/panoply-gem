module Panoply
  class Messages
    attr_reader :validation

    def initialize contents = {}
      @validation = Validation.new contents
    end

    def valid
      # If valid
      # * Publish saves record
      # * Feedback has success information
      # If invalid
      # * Publish is no-op
      # * Feedback has information why
      self
    end

    def publish
      self
    end

    def feedback
      self
    end

    private

    class Validation
      def initialize contents
      end
    end

    class Publication
    end

    class Feedback
    end
  end
end

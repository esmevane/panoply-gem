require 'forwardable'

module Panoply
  class Database
    extend Forwardable

    attr_reader :db

    def_delegator :db, :[]

    def initialize
      @db = uri ? Sequel.connect(uri) : Sequel.sqlite
    end

    def uri
      ENV.fetch('DB_URI', nil)
    end

  end
end

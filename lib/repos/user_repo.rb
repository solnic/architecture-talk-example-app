require 'yaml'

module Repos
  class UserRepo
    attr_reader :data

    def initialize
      @data = []
    end

    def create(params)
      data << params
      data.last
    end
  end
end

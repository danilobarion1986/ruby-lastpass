# frozen_string_literal: true

require "ruby/lastpass/version"
require "ruby/lastpass/login"

module Ruby
  module Lastpass
    class Error < StandardError; end

    attr_reader :logged, :result

    def self.login(username)
      @logged = Login.new(username)
    rescue => ex
      puts ex.message
    end

    def self.get(item)
      @result = `#{list(item)}` # if logged?
      info = { id: nil, username: nil }

      unless @result.empty?
        info[:id] = @result.match(/(\[id\: )([0-9]*)\]/)[2]
        info[:username] = @result.match(/(\[username\: )(.*)(\])/)[2]
      end

      info
    end

    private

    def self.list(item)
      "lpass ls --long | grep #{item}"
    end

    def self.logged?
      @logged
    end
  end
end

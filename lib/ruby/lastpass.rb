# frozen_string_literal: true

require "ruby/lastpass/version"
require "ruby/lastpass/login"

module Ruby
  module Lastpass
    class Error < StandardError; end

    def self.login(username)
      Login.new(username)
    end
  end
end

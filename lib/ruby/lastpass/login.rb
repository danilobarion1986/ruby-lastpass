# frozen_string_literal: true

module Ruby
  module Lastpass
    class Login
      def initialize(username)
        puts 'You need to install lastpass-cli first!'
        puts 'Follow this instructions: https://github.com/lastpass/lastpass-cli'
        puts username
      end
    end
  end
end

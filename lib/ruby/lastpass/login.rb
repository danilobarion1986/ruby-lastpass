# frozen_string_literal: true

module Ruby
  module Lastpass
    class Login
      attr_reader :username

      def initialize(username)
        @username = username

        if system('lpass -v')
          raise Error, 'Cannot login!' unless login_succesful?
        else
          puts 'You need to install lastpass-cli first!'
          puts 'Follow this instructions: https://github.com/lastpass/lastpass-cli'
        end
      end

      private

      def login_succesful?
        system("lpass login #{username}")
      end
    end
  end
end

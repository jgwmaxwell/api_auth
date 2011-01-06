require 'active_support/dependencies'

module ApiAuth

	module Tokenize
		
		def self.generate_token
			ActiveSupport::SecureRandom.base64(44).tr('+/=', 'xyz')
		end
	end
end

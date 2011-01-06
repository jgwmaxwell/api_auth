module ApiAuth	
	module Tokenize
		def self.initialize(options={})
			@tokenize_this = options[:tokenize_this]
		end
		
		def self.generate_token
			@tokenize_this + ActiveSupport::SecureRandom.base64(44).tr('+/=', 'xyz')
		end
	end
end

require 'active_support/dependencies'
require 'digest/sha2'

module ApiAuth	
	class Tokenize
	
		API_KEY = 'x34itcbhxijkhbilcbxi2lb5ixbx4ilubgcx'
		API_SECRET = 'kijejwcnfli3rjng2jkrnxcli3khbjrgckj4ncx3l4kjwekjbf'
	
		def initialize(options={})
			@api_key = options[:api_key]
			@api_secret = options[:api_secret]
		end
		
		def generate_token
			raw = @api_secret
			hash = Digest::SHA2.new << raw
			#@tokenize_this + ActiveSupport::SecureRandom.base64(44).tr('+/=', 'xyz')
		end
		
		def validate_token
			
		end
	end
end

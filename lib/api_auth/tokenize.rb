require 'active_support/dependencies'
require 'digest/sha2'
require 'action_controller/abstract_request'

module ApiAuth	
	class Tokenize
	
		API_KEY = 'x34itcbhxijkhbilcbxi2lb5ixbx4ilubgcx'
		API_SECRET = 'kijejwcnfli3rjng2jkrnxcli3khbjrgckj4ncx3l4kjwekjbf'
	
		def initialize(options={})
			@api_key = options[:api_key]
			@api_secret = options[:api_secret]
		end
		
		def generate_token(api_request)
			start_time = Time.now
				raw = api_request + @api_secret
				hash = {}
				hash[:code] = Digest::SHA2.new << raw
			end_time = Time.now
			hash[:time] = (end_time - start_time) * 1000
			hash
		end
		
		def validate_token
			raw = request.body
		end
	end
end

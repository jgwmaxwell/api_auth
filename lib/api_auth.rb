module ApiAuth
	require ActiveSupport::Concern
	
	module ClassMethods
		def self.authenticate(token)
			token == "hello" ? true : false
		end
	end

end

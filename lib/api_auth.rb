module ApiAuth

	def self.authenticate(token)
		token == "hello" ? true : false
	end

end

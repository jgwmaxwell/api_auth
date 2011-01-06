module ApiAuth
	class Validator < ActionController::AbstractRequest
		include ActionController::AbstractRequest
		def validate_token
			raw = request.body
		end
	end
end

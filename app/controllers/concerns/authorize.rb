module Authorize extend ActiveSupport::Concern
	def authorize
		bearer = request.headers["Authorization"]
    puts bearer
    if !bearer.nil?
      bearer = bearer.split(':')
      if bearer.length == 2
        @email = bearer[0].downcase
				@token = bearer[1]

        if Token.exists?(email: @email, token: @token)
          return
        end
      end
    end
    render json: {message: "Either your email or password is incorrect."}, status: :unauthorized 
	end
end
class Api::UsersController < Api::ApplicationController
  include Authorize
  before_action :authorize, only: [:show]

  def loginFacebook
      accessTokenUrl = URI("https://graph.facebook.com/oauth/access_token")
      fbparams = {
        code: params[:code],
        client_id: params[:clientId],
        redirect_uri: params[:redirectUri],
        client_secret: '07a4cc1498e3647aa8fcf2ad24064d4c'
      }
      accessTokenUrl.query = URI.encode_www_form(fbparams)
      res = Net::HTTP.get_response(accessTokenUrl)
      puts res.body.to_s
      if res.is_a?(Net::HTTPSuccess)
        graphApiUrl = URI("https://graph.facebook.com/me?#{res.body.to_s}")
        resinfo = Net::HTTP.get(graphApiUrl)
        # resinfo = Net::HTTP.get_response(accessTokenUrl)
        hash = ActiveSupport::JSON.decode(resinfo)
        if User.exists?(uid: hash["id"], email: hash["email"])
          @user = User.find_by(uid: hash["id"], email: hash["email"])
        else
          @user = User.create(uid: hash["id"], email: hash["email"], name: hash["name"], image: hash["image"])
        end
        @token = Token.create(uid: @user.uid, email: @user.email, expiration_date: Time.now + 1.day, user_id: @user.id)
      end
  end
end

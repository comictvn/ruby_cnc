class Api::WebsitesController < Api::ApplicationController
	include Authorize
  before_action :authorize, only: [:create]
	def create
    @website = Website.new(website_params)
    @website.save
  end

	private
    def set_website
      @website = Website.find(params[:id])
    end

    def website_params
      params.require(:website).permit(:storename, :name, :email, :phone, :address, :domain, :user_id, :field_website_id)
    end
end
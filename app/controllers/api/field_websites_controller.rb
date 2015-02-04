class Api::FieldWebsitesController < Api::ApplicationController
	
	def index
		@fieldWebsites = FieldWebsite.all
	end

	private
    def set_website
      @fieldWebsite = FieldWebsite.find(params[:id])
    end

    def field_website_params
      params.require(:fieldwebsite).permit(:title)
    end	
end
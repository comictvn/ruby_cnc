class Api::TemplatesController < Api::ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @templates = Template.all
  end

  def show
  end


  private
    def set_template
      @template = Template.find(params[:id])
    end

    def template_params
      params.require(:template).permit(:name, :note, :content, :designer, :demo)
    end
end

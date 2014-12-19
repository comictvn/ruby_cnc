class Api::ImageTemplatesController < Api::ApplicationController
  before_action :set_image_template, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @image_templates = ImageTemplate.all
    respond_with(@image_templates)
  end

  def show
    respond_with(@image_template)
  end

  def new
    @image_template = ImageTemplate.new
    respond_with(@image_template)
  end

  def edit
  end

  def create
    @image_template = ImageTemplate.new(image_template_params)
    @image_template.save
    respond_with(@image_template)
  end

  def update
    @image_template.update(image_template_params)
    respond_with(@image_template)
  end

  def destroy
    @image_template.destroy
    respond_with(@image_template)
  end

  private
    def set_image_template
      @image_template = ImageTemplate.find(params[:id])
    end

    def image_template_params
      params.require(:image_template).permit(:image_id, :template_id)
    end
end

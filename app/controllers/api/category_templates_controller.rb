class Api::CategoryTemplatesController < Api::ApplicationController
  before_action :set_category_template, only: [:show, :edit, :update, :destroy]


  def index
    @category_templates = CategoryTemplate.all
  end

  def show
    respond_with(@category_template)
  end

  def new
    @category_template = CategoryTemplate.new
    respond_with(@category_template)
  end

  def edit
  end

  def create
    @category_template = CategoryTemplate.new(category_template_params)
    @category_template.save
    respond_with(@category_template)
  end

  def update
    @category_template.update(category_template_params)
    respond_with(@category_template)
  end

  def destroy
    @category_template.destroy
    respond_with(@category_template)
  end

  private
    def set_category_template
      @category_template = CategoryTemplate.find(params[:id])
    end

    def category_template_params
      params.require(:category_template).permit(:name, :content, :parent, :active)
    end
end

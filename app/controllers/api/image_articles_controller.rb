class Api::ImageArticlesController < Api::ApplicationController
  before_action :set_image_article, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @image_articles = ImageArticle.all
    respond_with(@image_articles)
  end

  def show
    respond_with(@image_article)
  end

  def new
    @image_article = ImageArticle.new
    respond_with(@image_article)
  end

  def edit
  end

  def create
    @image_article = ImageArticle.new(image_article_params)
    @image_article.save
    respond_with(@image_article)
  end

  def update
    @image_article.update(image_article_params)
    respond_with(@image_article)
  end

  def destroy
    @image_article.destroy
    respond_with(@image_article)
  end

  private
    def set_image_article
      @image_article = ImageArticle.find(params[:id])
    end

    def image_article_params
      params.require(:image_article).permit(:articles_id, :images_id)
    end
end

class Api::ArticlesController < Api::ApplicationController
  
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all.order('id DESC')
    @ariticles_cate = Article.all.order('id DESC')
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @category = Category.find(@article.category_id)
    @articles = @category.articles.order(:created_at).limit(5)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:name, :description, :content, :active, :category_id, :image)
    end
end

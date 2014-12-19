require 'test_helper'

class ImageArticlesControllerTest < ActionController::TestCase
  setup do
    @image_article = image_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_article" do
    assert_difference('ImageArticle.count') do
      post :create, image_article: { articles_id: @image_article.articles_id, images_id: @image_article.images_id }
    end

    assert_redirected_to image_article_path(assigns(:image_article))
  end

  test "should show image_article" do
    get :show, id: @image_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_article
    assert_response :success
  end

  test "should update image_article" do
    patch :update, id: @image_article, image_article: { articles_id: @image_article.articles_id, images_id: @image_article.images_id }
    assert_redirected_to image_article_path(assigns(:image_article))
  end

  test "should destroy image_article" do
    assert_difference('ImageArticle.count', -1) do
      delete :destroy, id: @image_article
    end

    assert_redirected_to image_articles_path
  end
end

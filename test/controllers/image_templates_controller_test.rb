require 'test_helper'

class ImageTemplatesControllerTest < ActionController::TestCase
  setup do
    @image_template = image_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_template" do
    assert_difference('ImageTemplate.count') do
      post :create, image_template: { image_id: @image_template.image_id, template_id: @image_template.template_id }
    end

    assert_redirected_to image_template_path(assigns(:image_template))
  end

  test "should show image_template" do
    get :show, id: @image_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_template
    assert_response :success
  end

  test "should update image_template" do
    patch :update, id: @image_template, image_template: { image_id: @image_template.image_id, template_id: @image_template.template_id }
    assert_redirected_to image_template_path(assigns(:image_template))
  end

  test "should destroy image_template" do
    assert_difference('ImageTemplate.count', -1) do
      delete :destroy, id: @image_template
    end

    assert_redirected_to image_templates_path
  end
end

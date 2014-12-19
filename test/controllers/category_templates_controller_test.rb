require 'test_helper'

class CategoryTemplatesControllerTest < ActionController::TestCase
  setup do
    @category_template = category_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_template" do
    assert_difference('CategoryTemplate.count') do
      post :create, category_template: { active: @category_template.active, content: @category_template.content, name: @category_template.name, parent: @category_template.parent }
    end

    assert_redirected_to category_template_path(assigns(:category_template))
  end

  test "should show category_template" do
    get :show, id: @category_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_template
    assert_response :success
  end

  test "should update category_template" do
    patch :update, id: @category_template, category_template: { active: @category_template.active, content: @category_template.content, name: @category_template.name, parent: @category_template.parent }
    assert_redirected_to category_template_path(assigns(:category_template))
  end

  test "should destroy category_template" do
    assert_difference('CategoryTemplate.count', -1) do
      delete :destroy, id: @category_template
    end

    assert_redirected_to category_templates_path
  end
end

require 'test_helper'

class ProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @product_category = product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_category" do
    assert_difference('ProductCategory.count') do
      post :create, product_category: { creator_id: @product_category.creator_id, description: @product_category.description, parent_id: @product_category.parent_id, title: @product_category.title, visible: @product_category.visible, weight: @product_category.weight }
    end

    assert_redirected_to product_category_path(assigns(:product_category))
  end

  test "should show product_category" do
    get :show, id: @product_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_category
    assert_response :success
  end

  test "should update product_category" do
    patch :update, id: @product_category, product_category: { creator_id: @product_category.creator_id, description: @product_category.description, parent_id: @product_category.parent_id, title: @product_category.title, visible: @product_category.visible, weight: @product_category.weight }
    assert_redirected_to product_category_path(assigns(:product_category))
  end

  test "should destroy product_category" do
    assert_difference('ProductCategory.count', -1) do
      delete :destroy, id: @product_category
    end

    assert_redirected_to product_categories_path
  end
end

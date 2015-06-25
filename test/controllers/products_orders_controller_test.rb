require 'test_helper'

class ProductsOrdersControllerTest < ActionController::TestCase
  setup do
    @products_order = products_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create products_order" do
    assert_difference('ProductsOrder.count') do
      post :create, products_order: { quantity: @products_order.quantity }
    end

    assert_redirected_to products_order_path(assigns(:products_order))
  end

  test "should show products_order" do
    get :show, id: @products_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @products_order
    assert_response :success
  end

  test "should update products_order" do
    patch :update, id: @products_order, products_order: { quantity: @products_order.quantity }
    assert_redirected_to products_order_path(assigns(:products_order))
  end

  test "should destroy products_order" do
    assert_difference('ProductsOrder.count', -1) do
      delete :destroy, id: @products_order
    end

    assert_redirected_to products_orders_path
  end
end

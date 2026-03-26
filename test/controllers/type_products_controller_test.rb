require 'test_helper'

class TypeProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_product = type_products(:one)
  end

  test "should get index" do
    get type_products_url
    assert_response :success
  end

  test "should get new" do
    get new_type_product_url
    assert_response :success
  end

  test "should create type_product" do
    assert_difference('TypeProduct.count') do
      post type_products_url, params: { type_product: { name: @type_product.name } }
    end

    assert_redirected_to type_product_url(TypeProduct.last)
  end

  test "should show type_product" do
    get type_product_url(@type_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_product_url(@type_product)
    assert_response :success
  end

  test "should update type_product" do
    patch type_product_url(@type_product), params: { type_product: { name: @type_product.name } }
    assert_redirected_to type_product_url(@type_product)
  end

  test "should destroy type_product" do
    assert_difference('TypeProduct.count', -1) do
      delete type_product_url(@type_product)
    end

    assert_redirected_to type_products_url
  end
end

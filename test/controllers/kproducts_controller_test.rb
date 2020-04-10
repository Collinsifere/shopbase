require 'test_helper'

class KproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kproduct = kproducts(:one)
  end

  test "should get index" do
    get kproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_kproduct_url
    assert_response :success
  end

  test "should create kproduct" do
    assert_difference('Kproduct.count') do
      post kproducts_url, params: { kproduct: { description: @kproduct.description, image: @kproduct.image, name: @kproduct.name, price: @kproduct.price, size: @kproduct.size } }
    end

    assert_redirected_to kproduct_url(Kproduct.last)
  end

  test "should show kproduct" do
    get kproduct_url(@kproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_kproduct_url(@kproduct)
    assert_response :success
  end

  test "should update kproduct" do
    patch kproduct_url(@kproduct), params: { kproduct: { description: @kproduct.description, image: @kproduct.image, name: @kproduct.name, price: @kproduct.price, size: @kproduct.size } }
    assert_redirected_to kproduct_url(@kproduct)
  end

  test "should destroy kproduct" do
    assert_difference('Kproduct.count', -1) do
      delete kproduct_url(@kproduct)
    end

    assert_redirected_to kproducts_url
  end
end

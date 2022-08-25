require 'test_helper'

class CategoryysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoryy = categoryys(:one)
  end

  test "should get index" do
    get categoryys_url
    assert_response :success
  end

  test "should get new" do
    get new_categoryy_url
    assert_response :success
  end

  test "should create categoryy" do
    assert_difference('Categoryy.count') do
      post categoryys_url, params: { categoryy: { name: @categoryy.name, user_id: @categoryy.user_id } }
    end

    assert_redirected_to categoryy_url(Categoryy.last)
  end

  test "should show categoryy" do
    get categoryy_url(@categoryy)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoryy_url(@categoryy)
    assert_response :success
  end

  test "should update categoryy" do
    patch categoryy_url(@categoryy), params: { categoryy: { name: @categoryy.name, user_id: @categoryy.user_id } }
    assert_redirected_to categoryy_url(@categoryy)
  end

  test "should destroy categoryy" do
    assert_difference('Categoryy.count', -1) do
      delete categoryy_url(@categoryy)
    end

    assert_redirected_to categoryys_url
  end
end

require 'test_helper'

class UrbanEaglesControllerTest < ActionController::TestCase
  setup do
    @urban_eagle = urban_eagles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urban_eagles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urban_eagle" do
    assert_difference('UrbanEagle.count') do
      post :create, urban_eagle: {  }
    end

    assert_redirected_to urban_eagle_path(assigns(:urban_eagle))
  end

  test "should show urban_eagle" do
    get :show, id: @urban_eagle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urban_eagle
    assert_response :success
  end

  test "should update urban_eagle" do
    patch :update, id: @urban_eagle, urban_eagle: {  }
    assert_redirected_to urban_eagle_path(assigns(:urban_eagle))
  end

  test "should destroy urban_eagle" do
    assert_difference('UrbanEagle.count', -1) do
      delete :destroy, id: @urban_eagle
    end

    assert_redirected_to urban_eagles_path
  end
end

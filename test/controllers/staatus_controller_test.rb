require 'test_helper'

class StaatusControllerTest < ActionController::TestCase
  setup do
    @staatu = staatus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staatus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staatu" do
    assert_difference('Staatu.count') do
      post :create, staatu: { content: @staatu.content, name: @staatu.name }
    end

    assert_redirected_to staatu_path(assigns(:staatu))
  end

  test "should show staatu" do
    get :show, id: @staatu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staatu
    assert_response :success
  end

  test "should update staatu" do
    patch :update, id: @staatu, staatu: { content: @staatu.content, name: @staatu.name }
    assert_redirected_to staatu_path(assigns(:staatu))
  end

  test "should destroy staatu" do
    assert_difference('Staatu.count', -1) do
      delete :destroy, id: @staatu
    end

    assert_redirected_to staatus_path
  end
end

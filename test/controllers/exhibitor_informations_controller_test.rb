require 'test_helper'

class ExhibitorInformationsControllerTest < ActionController::TestCase
  setup do
    @exhibitor_information = exhibitor_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitor_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibitor_information" do
    assert_difference('ExhibitorInformation.count') do
      post :create, exhibitor_information: { content: @exhibitor_information.content, header: @exhibitor_information.header }
    end

    assert_redirected_to exhibitor_information_path(assigns(:exhibitor_information))
  end

  test "should show exhibitor_information" do
    get :show, id: @exhibitor_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibitor_information
    assert_response :success
  end

  test "should update exhibitor_information" do
    patch :update, id: @exhibitor_information, exhibitor_information: { content: @exhibitor_information.content, header: @exhibitor_information.header }
    assert_redirected_to exhibitor_information_path(assigns(:exhibitor_information))
  end

  test "should destroy exhibitor_information" do
    assert_difference('ExhibitorInformation.count', -1) do
      delete :destroy, id: @exhibitor_information
    end

    assert_redirected_to exhibitor_informations_path
  end
end

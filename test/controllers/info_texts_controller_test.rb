require 'test_helper'

class InfoTextsControllerTest < ActionController::TestCase
  setup do
    @info_text = info_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_text" do
    assert_difference('InfoText.count') do
      post :create, info_text: { content: @info_text.content, title: @info_text.title }
    end

    assert_redirected_to info_text_path(assigns(:info_text))
  end

  test "should show info_text" do
    get :show, id: @info_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_text
    assert_response :success
  end

  test "should update info_text" do
    patch :update, id: @info_text, info_text: { content: @info_text.content, title: @info_text.title }
    assert_redirected_to info_text_path(assigns(:info_text))
  end

  test "should destroy info_text" do
    assert_difference('InfoText.count', -1) do
      delete :destroy, id: @info_text
    end

    assert_redirected_to info_texts_path
  end
end

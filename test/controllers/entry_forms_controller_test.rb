require 'test_helper'

class EntryFormsControllerTest < ActionController::TestCase
  setup do
    @entry_form = entry_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry_form" do
    assert_difference('EntryForm.count') do
      post :create, entry_form: { contact: @entry_form.contact, electricity: @entry_form.electricity, email: @entry_form.email, food_amount: @entry_form.food_amount, food_other: @entry_form.food_other, internet: @entry_form.internet, organization: @entry_form.organization, seminar: @entry_form.seminar, telephone: @entry_form.telephone }
    end

    assert_redirected_to entry_form_path(assigns(:entry_form))
  end

  test "should show entry_form" do
    get :show, id: @entry_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry_form
    assert_response :success
  end

  test "should update entry_form" do
    patch :update, id: @entry_form, entry_form: { contact: @entry_form.contact, electricity: @entry_form.electricity, email: @entry_form.email, food_amount: @entry_form.food_amount, food_other: @entry_form.food_other, internet: @entry_form.internet, organization: @entry_form.organization, seminar: @entry_form.seminar, telephone: @entry_form.telephone }
    assert_redirected_to entry_form_path(assigns(:entry_form))
  end

  test "should destroy entry_form" do
    assert_difference('EntryForm.count', -1) do
      delete :destroy, id: @entry_form
    end

    assert_redirected_to entry_forms_path
  end
end

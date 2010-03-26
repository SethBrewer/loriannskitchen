require 'test_helper'

class TempEmailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_email" do
    assert_difference('TempEmail.count') do
      post :create, :temp_email => { }
    end

    assert_redirected_to temp_email_path(assigns(:temp_email))
  end

  test "should show temp_email" do
    get :show, :id => temp_emails(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => temp_emails(:one).id
    assert_response :success
  end

  test "should update temp_email" do
    put :update, :id => temp_emails(:one).id, :temp_email => { }
    assert_redirected_to temp_email_path(assigns(:temp_email))
  end

  test "should destroy temp_email" do
    assert_difference('TempEmail.count', -1) do
      delete :destroy, :id => temp_emails(:one).id
    end

    assert_redirected_to temp_emails_path
  end
end

require 'test_helper'

class ReferentsControllerTest < ActionController::TestCase
  setup do
    @referent = referents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referent" do
    assert_difference('Referent.count') do
      post :create, referent: { mail: @referent.mail, name: @referent.name, phone: @referent.phone, role: @referent.role, surname: @referent.surname }
    end

    assert_redirected_to referent_path(assigns(:referent))
  end

  test "should show referent" do
    get :show, id: @referent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referent
    assert_response :success
  end

  test "should update referent" do
    patch :update, id: @referent, referent: { mail: @referent.mail, name: @referent.name, phone: @referent.phone, role: @referent.role, surname: @referent.surname }
    assert_redirected_to referent_path(assigns(:referent))
  end

  test "should destroy referent" do
    assert_difference('Referent.count', -1) do
      delete :destroy, id: @referent
    end

    assert_redirected_to referents_path
  end
end

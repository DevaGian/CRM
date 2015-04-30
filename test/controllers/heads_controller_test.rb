require 'test_helper'

class HeadsControllerTest < ActionController::TestCase
  setup do
    @head = heads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create head" do
    assert_difference('Head.count') do
      post :create, head: { address_id: @head.address_id, born_date: @head.born_date, born_place: @head.born_place, cod_fiscale: @head.cod_fiscale, document_date: @head.document_date, document_number: @head.document_number, document_type: @head.document_type, name: @head.name, surname: @head.surname }
    end

    assert_redirected_to head_path(assigns(:head))
  end

  test "should show head" do
    get :show, id: @head
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @head
    assert_response :success
  end

  test "should update head" do
    patch :update, id: @head, head: { address_id: @head.address_id, born_date: @head.born_date, born_place: @head.born_place, cod_fiscale: @head.cod_fiscale, document_date: @head.document_date, document_number: @head.document_number, document_type: @head.document_type, name: @head.name, surname: @head.surname }
    assert_redirected_to head_path(assigns(:head))
  end

  test "should destroy head" do
    assert_difference('Head.count', -1) do
      delete :destroy, id: @head
    end

    assert_redirected_to heads_path
  end
end

require 'test_helper'

class CostumerMailsControllerTest < ActionController::TestCase
  setup do
    @costumer_mail = costumer_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costumer_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costumer_mail" do
    assert_difference('CostumerMail.count') do
      post :create, costumer_mail: { dominio: @costumer_mail.dominio, mb: @costumer_mail.mb, mensilita: @costumer_mail.mensilita, nome: @costumer_mail.nome }
    end

    assert_redirected_to costumer_mail_path(assigns(:costumer_mail))
  end

  test "should show costumer_mail" do
    get :show, id: @costumer_mail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costumer_mail
    assert_response :success
  end

  test "should update costumer_mail" do
    patch :update, id: @costumer_mail, costumer_mail: { dominio: @costumer_mail.dominio, mb: @costumer_mail.mb, mensilita: @costumer_mail.mensilita, nome: @costumer_mail.nome }
    assert_redirected_to costumer_mail_path(assigns(:costumer_mail))
  end

  test "should destroy costumer_mail" do
    assert_difference('CostumerMail.count', -1) do
      delete :destroy, id: @costumer_mail
    end

    assert_redirected_to costumer_mails_path
  end
end

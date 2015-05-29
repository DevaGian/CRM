require 'test_helper'

class WebSitesControllerTest < ActionController::TestCase
  setup do
    @web_site = web_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_site" do
    assert_difference('WebSite.count') do
      post :create, web_site: { attivazione: @web_site.attivazione, descrizione: @web_site.descrizione, importo: @web_site.importo, mensilita: @web_site.mensilita, padre: @web_site.padre, servizio: @web_site.servizio }
    end

    assert_redirected_to web_site_path(assigns(:web_site))
  end

  test "should show web_site" do
    get :show, id: @web_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_site
    assert_response :success
  end

  test "should update web_site" do
    patch :update, id: @web_site, web_site: { attivazione: @web_site.attivazione, descrizione: @web_site.descrizione, importo: @web_site.importo, mensilita: @web_site.mensilita, padre: @web_site.padre, servizio: @web_site.servizio }
    assert_redirected_to web_site_path(assigns(:web_site))
  end

  test "should destroy web_site" do
    assert_difference('WebSite.count', -1) do
      delete :destroy, id: @web_site
    end

    assert_redirected_to web_sites_path
  end
end

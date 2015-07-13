require 'test_helper'

class KontaktsControllerTest < ActionController::TestCase
  setup do
    @kontakt = kontakts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontakts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontakt" do
    assert_difference('Kontakt.count') do
      post :create, kontakt: { adresa: @kontakt.adresa, jmeno: @kontakt.jmeno, prijmeni: @kontakt.prijmeni, telefon: @kontakt.telefon }
    end

    assert_redirected_to kontakt_path(assigns(:kontakt))
  end

  test "should show kontakt" do
    get :show, id: @kontakt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kontakt
    assert_response :success
  end

  test "should update kontakt" do
    patch :update, id: @kontakt, kontakt: { adresa: @kontakt.adresa, jmeno: @kontakt.jmeno, prijmeni: @kontakt.prijmeni, telefon: @kontakt.telefon }
    assert_redirected_to kontakt_path(assigns(:kontakt))
  end

  test "should destroy kontakt" do
    assert_difference('Kontakt.count', -1) do
      delete :destroy, id: @kontakt
    end

    assert_redirected_to kontakts_path
  end
end

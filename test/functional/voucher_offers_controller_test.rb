require 'test_helper'

class VoucherOffersControllerTest < ActionController::TestCase
  setup do
    @voucher_offer = voucher_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voucher_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voucher_offer" do
    assert_difference('VoucherOffer.count') do
      post :create, :voucher_offer => @voucher_offer.attributes
    end

    assert_redirected_to voucher_offer_path(assigns(:voucher_offer))
  end

  test "should show voucher_offer" do
    get :show, :id => @voucher_offer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @voucher_offer.to_param
    assert_response :success
  end

  test "should update voucher_offer" do
    put :update, :id => @voucher_offer.to_param, :voucher_offer => @voucher_offer.attributes
    assert_redirected_to voucher_offer_path(assigns(:voucher_offer))
  end

  test "should destroy voucher_offer" do
    assert_difference('VoucherOffer.count', -1) do
      delete :destroy, :id => @voucher_offer.to_param
    end

    assert_redirected_to voucher_offers_path
  end
end

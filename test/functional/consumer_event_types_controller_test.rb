require 'test_helper'

class ConsumerEventTypesControllerTest < ActionController::TestCase
  setup do
    @consumer_event_type = consumer_event_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumer_event_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumer_event_type" do
    assert_difference('ConsumerEventType.count') do
      post :create, :consumer_event_type => @consumer_event_type.attributes
    end

    assert_redirected_to consumer_event_type_path(assigns(:consumer_event_type))
  end

  test "should show consumer_event_type" do
    get :show, :id => @consumer_event_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @consumer_event_type.to_param
    assert_response :success
  end

  test "should update consumer_event_type" do
    put :update, :id => @consumer_event_type.to_param, :consumer_event_type => @consumer_event_type.attributes
    assert_redirected_to consumer_event_type_path(assigns(:consumer_event_type))
  end

  test "should destroy consumer_event_type" do
    assert_difference('ConsumerEventType.count', -1) do
      delete :destroy, :id => @consumer_event_type.to_param
    end

    assert_redirected_to consumer_event_types_path
  end
end

require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  test "should get account:integer" do
    get :account:integer
    assert_response :success
  end

  test "should get type:string" do
    get :type:string
    assert_response :success
  end

  test "should get month:integer" do
    get :month:integer
    assert_response :success
  end

  test "should get year:integer" do
    get :year:integer
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home |CHOP."
    assert_select "body h1", "Welcome to CHOP."
    assert_select "body p", "Let your tummy lead the way."
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help |CHOP."
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About |CHOP."
    assert_select "body p" , "Let your tummy lead the way."
  end

end

require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test 'index: success' do
    user = users(:one)
    login(user)

    get root_path 
    assert_response :ok
  end

  test 'index: failure' do
    get root_path

    assert_response :redirect
  end
end

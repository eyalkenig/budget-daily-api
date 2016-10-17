require 'test_helper'

class SetupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setup = setups(:one)
  end

  test "should get index" do
    get setups_url, as: :json
    assert_response :success
  end

  test "should create setup" do
    assert_difference('Setup.count') do
      post setups_url, params: { setup: { active: @setup.active, description: @setup.description, name: @setup.name, user_id: @setup.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show setup" do
    get setup_url(@setup), as: :json
    assert_response :success
  end

  test "should update setup" do
    patch setup_url(@setup), params: { setup: { active: @setup.active, description: @setup.description, name: @setup.name, user_id: @setup.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy setup" do
    assert_difference('Setup.count', -1) do
      delete setup_url(@setup), as: :json
    end

    assert_response 204
  end
end

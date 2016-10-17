require 'test_helper'

class IncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income = incomes(:one)
  end

  test "should get index" do
    get incomes_url, as: :json
    assert_response :success
  end

  test "should create income" do
    assert_difference('Income.count') do
      post incomes_url, params: { income: { active: @income.active, amount: @income.amount, description: @income.description, name: @income.name, setup_id: @income.setup_id } }, as: :json
    end

    assert_response 201
  end

  test "should show income" do
    get income_url(@income), as: :json
    assert_response :success
  end

  test "should update income" do
    patch income_url(@income), params: { income: { active: @income.active, amount: @income.amount, description: @income.description, name: @income.name, setup_id: @income.setup_id } }, as: :json
    assert_response 200
  end

  test "should destroy income" do
    assert_difference('Income.count', -1) do
      delete income_url(@income), as: :json
    end

    assert_response 204
  end
end

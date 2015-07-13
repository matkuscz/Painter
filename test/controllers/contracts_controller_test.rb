require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { agre_finish_date: @contract.agre_finish_date, back_pay: @contract.back_pay, backup_cost: @contract.backup_cost, contract_num: @contract.contract_num, contract_type: @contract.contract_type, contract_type_id: @contract.contract_type_id, cost: @contract.cost, customer: @contract.customer, customer_id: @contract.customer_id, fact_netto: @contract.fact_netto, order_identifier: @contract.order_identifier, protocole_done_date: @contract.protocole_done_date, review_date: @contract.review_date, sample_income_date: @contract.sample_income_date, user: @contract.user, user_id: @contract.user_id }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { agre_finish_date: @contract.agre_finish_date, back_pay: @contract.back_pay, backup_cost: @contract.backup_cost, contract_num: @contract.contract_num, contract_type: @contract.contract_type, contract_type_id: @contract.contract_type_id, cost: @contract.cost, customer: @contract.customer, customer_id: @contract.customer_id, fact_netto: @contract.fact_netto, order_identifier: @contract.order_identifier, protocole_done_date: @contract.protocole_done_date, review_date: @contract.review_date, sample_income_date: @contract.sample_income_date, user: @contract.user, user_id: @contract.user_id }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end

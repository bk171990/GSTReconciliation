require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, arn_no: @customer.arn_no, cust_name_of_commodity_supplied: @customer.cust_name_of_commodity_supplied, cust_name_of_service: @customer.cust_name_of_service, cust_pan_no: @customer.cust_pan_no, cust_place_of_supply: @customer.cust_place_of_supply, cust_rate_of_tax: @customer.cust_rate_of_tax, cust_serv_acc_code: @customer.cust_serv_acc_code, cust_tarrif_no: @customer.cust_tarrif_no, customer_name: @customer.customer_name, gstin_no_reg: @customer.gstin_no_reg } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, arn_no: @customer.arn_no, cust_name_of_commodity_supplied: @customer.cust_name_of_commodity_supplied, cust_name_of_service: @customer.cust_name_of_service, cust_pan_no: @customer.cust_pan_no, cust_place_of_supply: @customer.cust_place_of_supply, cust_rate_of_tax: @customer.cust_rate_of_tax, cust_serv_acc_code: @customer.cust_serv_acc_code, cust_tarrif_no: @customer.cust_tarrif_no, customer_name: @customer.customer_name, gstin_no_reg: @customer.gstin_no_reg } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end

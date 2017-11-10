require 'test_helper'

class ChartedAccountantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charted_accountant = charted_accountants(:one)
  end

  test "should get index" do
    get charted_accountants_url
    assert_response :success
  end

  test "should get new" do
    get new_charted_accountant_url
    assert_response :success
  end

  test "should create charted_accountant" do
    assert_difference('ChartedAccountant.count') do
      post charted_accountants_url, params: { charted_accountant: { address: @charted_accountant.address, ca_no: @charted_accountant.ca_no, email: @charted_accountant.email, firm_name: @charted_accountant.firm_name, name: @charted_accountant.name, phn_no: @charted_accountant.phn_no } }
    end

    assert_redirected_to charted_accountant_url(ChartedAccountant.last)
  end

  test "should show charted_accountant" do
    get charted_accountant_url(@charted_accountant)
    assert_response :success
  end

  test "should get edit" do
    get edit_charted_accountant_url(@charted_accountant)
    assert_response :success
  end

  test "should update charted_accountant" do
    patch charted_accountant_url(@charted_accountant), params: { charted_accountant: { address: @charted_accountant.address, ca_no: @charted_accountant.ca_no, email: @charted_accountant.email, firm_name: @charted_accountant.firm_name, name: @charted_accountant.name, phn_no: @charted_accountant.phn_no } }
    assert_redirected_to charted_accountant_url(@charted_accountant)
  end

  test "should destroy charted_accountant" do
    assert_difference('ChartedAccountant.count', -1) do
      delete charted_accountant_url(@charted_accountant)
    end

    assert_redirected_to charted_accountants_url
  end
end

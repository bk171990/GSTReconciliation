require 'test_helper'

class BusinessSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_sale = business_sales(:one)
  end

  test "should get index" do
    get business_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_business_sale_url
    assert_response :success
  end

  test "should create business_sale" do
    assert_difference('BusinessSale.count') do
      post business_sales_url, params: { business_sale: { date: @business_sale.date, eway_bill: @business_sale.eway_bill, gstin_no: @business_sale.gstin_no, invoice_date: @business_sale.invoice_date, place_of_supply: @business_sale.place_of_supply, serial_no: @business_sale.serial_no, time_of_supply: @business_sale.time_of_supply, total_invoice: @business_sale.total_invoice, transportation_mode: @business_sale.transportation_mode, vehicle_no: @business_sale.vehicle_no } }
    end

    assert_redirected_to business_sale_url(BusinessSale.last)
  end

  test "should show business_sale" do
    get business_sale_url(@business_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_sale_url(@business_sale)
    assert_response :success
  end

  test "should update business_sale" do
    patch business_sale_url(@business_sale), params: { business_sale: { date: @business_sale.date, eway_bill: @business_sale.eway_bill, gstin_no: @business_sale.gstin_no, invoice_date: @business_sale.invoice_date, place_of_supply: @business_sale.place_of_supply, serial_no: @business_sale.serial_no, time_of_supply: @business_sale.time_of_supply, total_invoice: @business_sale.total_invoice, transportation_mode: @business_sale.transportation_mode, vehicle_no: @business_sale.vehicle_no } }
    assert_redirected_to business_sale_url(@business_sale)
  end

  test "should destroy business_sale" do
    assert_difference('BusinessSale.count', -1) do
      delete business_sale_url(@business_sale)
    end

    assert_redirected_to business_sales_url
  end
end

require 'test_helper'

class PartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get parties_url
    assert_response :success
  end

  test "should get new" do
    get new_party_url
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post parties_url, params: { party: { ca_contact: @party.ca_contact, ca_name: @party.ca_name, commodity_name: @party.commodity_name, hsn_no: @party.hsn_no, name_service: @party.name_service, party_address: @party.party_address, party_arn_no: @party.party_arn_no, party_gstin_no: @party.party_gstin_no, party_name: @party.party_name, party_pan_no: @party.party_pan_no, place_of_supply: @party.place_of_supply, rate_of_tax: @party.rate_of_tax, service_acc_code: @party.service_acc_code, state_code: @party.state_code, state_name: @party.state_name, tarrif_no: @party.tarrif_no } }
    end

    assert_redirected_to party_url(Party.last)
  end

  test "should show party" do
    get party_url(@party)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_url(@party)
    assert_response :success
  end

  test "should update party" do
    patch party_url(@party), params: { party: { ca_contact: @party.ca_contact, ca_name: @party.ca_name, commodity_name: @party.commodity_name, hsn_no: @party.hsn_no, name_service: @party.name_service, party_address: @party.party_address, party_arn_no: @party.party_arn_no, party_gstin_no: @party.party_gstin_no, party_name: @party.party_name, party_pan_no: @party.party_pan_no, place_of_supply: @party.place_of_supply, rate_of_tax: @party.rate_of_tax, service_acc_code: @party.service_acc_code, state_code: @party.state_code, state_name: @party.state_name, tarrif_no: @party.tarrif_no } }
    assert_redirected_to party_url(@party)
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete party_url(@party)
    end

    assert_redirected_to parties_url
  end
end

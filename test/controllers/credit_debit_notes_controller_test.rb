require 'test_helper'

class CreditDebitNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get credit_debit_notes_new_url
    assert_response :success
  end

end

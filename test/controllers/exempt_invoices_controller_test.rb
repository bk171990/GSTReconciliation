require 'test_helper'

class ExemptInvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exempt_invoices_new_url
    assert_response :success
  end

end

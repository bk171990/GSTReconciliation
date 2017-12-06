require 'test_helper'

class ExportInvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get export_invoices_new_url
    assert_response :success
  end

end

require 'test_helper'

class IssueNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get issue_notes_new_url
    assert_response :success
  end

end

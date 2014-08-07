require 'test_helper'

class AdminNotifierTest < ActionMailer::TestCase
  test "error_notifier" do
    mail = AdminNotifier.error_notifier
    assert_equal "Error notifier", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

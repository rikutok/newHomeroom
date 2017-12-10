require 'test_helper'

class TestMailerTest < ActionMailer::TestCase
  test "sender" do
    mail = TestMailer.sender
    assert_equal "Sender", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

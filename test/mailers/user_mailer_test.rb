require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "registration_confimation" do
    mail = UserMailer.registration_confimation
    assert_equal "Registration confimation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

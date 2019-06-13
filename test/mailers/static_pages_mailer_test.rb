require 'test_helper'

class StaticPagesMailerTest < ActionMailer::TestCase
  test "newsletter_email" do
    mail = StaticPagesMailer.newsletter_email
    assert_equal "Newsletter email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "contact_email" do
    mail = StaticPagesMailer.contact_email
    assert_equal "Contact email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

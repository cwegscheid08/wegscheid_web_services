class StaticPagesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.static_pages_mailer.newsletter_email.subject
  #
  def newsletter_email(user_email)
    @user_email = user_email

    mail to: @user_email, subject: "Hello, world!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.static_pages_mailer.contact_email.subject
  #
  def contact_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

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


  def maintenance_email
    @business_name = params[:business_name]
    @url = params[:url]
    @email = params[:email]
    @phone_number = params[:phone_number]
    @destination = 'chris.wegscheid@wegscheidwebservices.com'


    mail(to: @destination, from: @email, subject: 'Maintenance Lead')
  end



end





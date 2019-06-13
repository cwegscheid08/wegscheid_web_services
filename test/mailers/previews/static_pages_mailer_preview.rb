# Preview all emails at http://localhost:3000/rails/mailers/static_pages_mailer
class StaticPagesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/static_pages_mailer/newsletter_email
  def newsletter_email
  	user_email = 'chris@wegscheidwebservices.com'
    StaticPagesMailer.newsletter_email(user_email)
  end

  # Preview this email at http://localhost:3000/rails/mailers/static_pages_mailer/contact_email
  def contact_email
    StaticPagesMailer.contact_email
  end

end

class PeopleMailer < ActionMailer::Base
  default from: "contact@reliefwatch.com"

  def contact_email(email, name, company, message)
    @email = email
    @name = name
    @company = company
    @message = message

    mail(to: "daniel@reliefwatch.com", subject: "Contact Form Inquiry")
  end
end
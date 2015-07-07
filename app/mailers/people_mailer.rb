class PeopleMailer < ActionMailer::Base
  default from: "contact@reliefwatch.com"

  def contact_email(email, name, company, request, message)
    @email = email
    @name = name
    @company = company
    @request = request
    @message = message

    mail(to: "josh@reliefwatch.com", subject: "Contact Form Inquiry")
  end
end
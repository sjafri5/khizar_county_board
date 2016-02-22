class PeopleMailer < ActionMailer::Base
  default from: "tstartl@gmail.com"

  def contact_email(email, name, message)
    @email = email
    @name = name
    @message = message

    mail(to: "tstartl@gmail.com", subject: "Contact Form Inquiry")
  end
end

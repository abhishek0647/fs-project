class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_contact(email,body)
  	@email = email
  	@body = body
  	mail to: "Admin <abhishek0647@gmail.com>", subject: "New Contact Mail"
  end
end

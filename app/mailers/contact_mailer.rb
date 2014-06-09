class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_contact(email,body)
  	@email = email
  	@body = body
  	mail to: "Admin <mail@skykog.com>", subject: "New Mail"
  end
end

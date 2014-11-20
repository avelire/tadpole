class NotificationMailer < ActionMailer::Base
  default from: "no-reply@foodmonger.com"

  def comment_added
  	mail(to: "avelire@gmail.com",
  		 subject: "A comment has been added to your place.")
  end
end

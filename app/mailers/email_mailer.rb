class EmailMailer < ActionMailer::Base
  default from: "no-replay@example.com"

  def welcome_email(email)
    @email = email
    @url  = 'http://localhost:3000/login'
    mail(to: @email.email, subject: 'Welcome to My Awesome Site')
  end
end

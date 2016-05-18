class UserMailer < ApplicationMailer
  def welcome_email
    mail(to: "foo@mailinator.com", subject: 'Welcome to My Awesome Site')
  end
end

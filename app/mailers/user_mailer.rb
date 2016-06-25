class UserMailer < ActionMailer::Base
  default from: "salmanfasttian@gmail.com"
  def welcome_email(user)
    @user = user
    # I am overriding the 'to' default
    mail(to: @user.email, subject: 'Do you have any spam?')
  end
end

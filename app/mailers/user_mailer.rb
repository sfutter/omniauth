class UserMailer < ActionMailer::Base
  default from: "codingpractice2@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://twominutebreak.me/Login'
  	mail(to: @user.email, subject: 'Welcome to twominutebreak')
  end
  
end

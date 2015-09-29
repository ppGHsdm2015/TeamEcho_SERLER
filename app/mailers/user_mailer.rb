class UserMailer < ActionMailer::Base
    default :from => "noreply@mydomain.com"

 def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.username} <#{user.email}>", :subject => "Registration Confirmation")
 end
end
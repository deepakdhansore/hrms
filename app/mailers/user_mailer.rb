class UserMailer < ApplicationMailer
    layout "mailer"

    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
         
    end
end

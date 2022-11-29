# frozen_string_literal: true

class WelcomeMailer < ApplicationMailer
  def send_welcome_mail
    mail(to: '.com',
         subject: 'Welcome to My Awesome Site',
         message: 'welcome deepak')
  end
end

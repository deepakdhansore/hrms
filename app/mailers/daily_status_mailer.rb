# frozen_string_literal: true

class DailyStatusMailer < ApplicationMailer
  def send_mail
    mail(to: 'zoudaupporofo-8730@yopmail.com',
         subject: 'Sending Daily Status',
         message: 'MY today status')
  end
end

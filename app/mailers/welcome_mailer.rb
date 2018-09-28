class WelcomeMailer < ApplicationMailer

    def welcome_send(user)
      @user = user
      mail to: user.email, subject: "Willkommen auf der FAQ-Seite", from: 'admin@faq.de'
    end
end

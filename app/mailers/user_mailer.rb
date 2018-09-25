class UserMailer < ApplicationMailer
    default from: "julia@julia-hofmann.com"

    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'julia@julia-hofmann.com',
           subject: "A new contact form message from #{name}")
    end

    def welcome(user)
    @appname = "Fengyue 风雨"
      mail(to: user.email,
        subject: "Welcome to #{@appname}!")
    end
  end

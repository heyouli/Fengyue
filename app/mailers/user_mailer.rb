class UserMailer < ApplicationMailer
    default from: "julia@julia-hofmann.com"

    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'julia@julia-hofmann.com',
           subject: "A new contact form message from #{name}")
    end
  end

class ContactMailer < ApplicationMailer
default from: "'Gary'gary525t@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.registration_confimation.subject
  #
  def registration_confimation(contact)
    @contact = contact
    mail to: @contact.email, subject:  "Hi! 這是系統自動回覆信，我將盡快回覆您~謝謝!"
  end
end
class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.sender.subject
  #
  def sender(address, name, set_class)
    @address = address
    @user_name = name
    @classes = set_class
    mail to: address,
         subject: '会員登録完了'
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: 'tiscal95@gmail.com'

  layout 'mailer'

  def send_signup_email(user, password)
    @user = user
    @password = password
    mail(:to => @user.email,
         :subject => 'Registrierung bei helpUhelp')
  end
end

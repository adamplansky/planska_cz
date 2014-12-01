class UserMailer < ActionMailer::Base
  default to: "jitka@planska.cz"
  
  def ask_email(user)
    @user = user
    mail(from: user.email, :subject => " :DOTAZ: z formulare na www.planska.cz")
    
  end  
end
class UserMailer < ApplicationMailer

    default from: 'no-reply@yopmail.com'
 
    def welcome_email(user)
      @user = user 
      @url  = 'https://events-yann.herokuapp.com' 
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

end

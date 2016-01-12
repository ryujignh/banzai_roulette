class UserMailer < ApplicationMailer
  default from: "ryujignh@gmail.com"

  def invite_email(email, game_id)
    @game_id = game_id
    mail(to: email, subject: "You are invited to Banzai Roulette")
  end
end
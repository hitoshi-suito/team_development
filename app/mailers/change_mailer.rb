class ChangeMailer < ApplicationMailer
  default from: 'from@example.com'
  def change_mail(team)
    # binding.pry
    @team = team
    @email = @team.owner.email
    @owner = @team.owner
    mail to: @email, subject: "オーナーが変わりました"
  end
end
class AssignMailer < ApplicationMailer
  default from: 'from@example.com'
  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
  def destroy_mail(agenda)
    binding.pry
    @agenda = agenda
    binding.pry
    @emails = agenda.team.users
    binding.pry
    @emails.each do |email|
      mail to: email, subject: "アジェンダが削除されました"
    end 
  end
end
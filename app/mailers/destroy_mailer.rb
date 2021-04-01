class DestroyMailer < ApplicationMailer
  default from: 'from@example.com'
    def destroy_mail(agenda)
      @agenda = agenda
      mail to: @email, subject: "アジェンダが削除されました"
    end
end
class ContactMailer < ApplicationMailer
    def contact_mail(user)
        @user = user
        mail to: @user.email, subject: "新規登録完了確認"
    end
end

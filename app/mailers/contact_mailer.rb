class ContactMailer < ApplicationMailer
  def contact_mail(picture_post)
    @picture_post = picture_post

    mail to: @picture_post.user.email, subject: "投稿の確認メール"
  end
end

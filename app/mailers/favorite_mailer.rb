class FavoriteMailer < ApplicationMailer
  default from: "kraniasar@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
    headers["References"] = "<post/#{post.id}@your-app-name.example>"

    @user = user
    @post = post
    @comment = comment

<<<<<<< HEAD
    mail(to: user_email, subject: "New comment on #{post.title}")
=======
    mail(to: user.email, subject: "New comment on #{post.title}")
>>>>>>> 2aa3fbf006ef86d13482c9a46e91d04e70d2d229
  end
end

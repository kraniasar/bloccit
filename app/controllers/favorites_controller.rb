class FavoritesController < ApplicationController

  before_action :require_sign_in

  def create
<<<<<<< HEAD

      post = Post.find(params[:post_id])
      favorite = current_user.favorites.build(post: post)

      if favorite.save
        flash[:notice] = "Post favorited."
      else
        flash[:alert] = "Favoriting failed."
      end

      redirect_to [post.topic, post]
    end

    def destroy
      post = Post.find(params[:post_id])
      favorite = current_user.favorites.find(params[:id])

      if favorite.destroy
        flash[:notice] = "Post unfavorited."
      else
        flash[:alert] = "Unfavoriting failed"
      end
        redirect_to [ post.topic, post]
      end
    end
=======
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)

    if favorite.save
      flash[:notice] = "Post favorited."
    else
      flash[:alert] = "Favoriting failed"
    end

    redirect_to [post.topic, post]
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    if favorite.destroy
      flash[:notice] = "Post unfavorited"
    else
      flash[:alert] = "Unfavoriting failed"
    end
      redirect_to [post.topic, post]
  end
end
>>>>>>> 2aa3fbf006ef86d13482c9a46e91d04e70d2d229

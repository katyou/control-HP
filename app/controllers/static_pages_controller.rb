class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post = current_user.posts.build
      @posts = current_user.posts.includes(:user).order(created_at: :desc)
    end
  end
  
  #def show
   # @user = User.find(params[:id])
   # @posts = @user.posts.order(created_at: :desc)
  #end
end

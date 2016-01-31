class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome!!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to root_path
      return
    end
    
    if @user.update(user_params)
      redirect_to root_path , notice: '更新しました'
    else
      render 'edit'
    end
  end
    
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                                :password_confirmation)
  end
end

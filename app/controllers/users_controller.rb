class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to products_url, notice: "Welcome, #{@user.email.capitalize}. Thank you for signing up!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @user_reviews = @user.reviews
  end

  def edit
    @user = User.find(params[:id])

    if @user != current_user
      redirect_to products_url, notice: "You cannot edit this user."
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

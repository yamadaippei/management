class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
		  redirect_to users_path
	  else
      redirect_to new_user_path  #userをセーブできなかった時
    end
  end

  def confirmation 
  end

  private

  def user_params
    params.require(:user).permit(:name,:name_kana,:address,:address_number,:phone,:sex,:age)
  end

end

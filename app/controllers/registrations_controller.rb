class RegistrationsController < ApplicationController
    def new
      @user = User.new
    end
    def create
      @user = User.new(user_params)
      @user.profile = Profile.new
      if @user.save
        log_in(@user)
        redirect_to root_path
        flash[:success] = 'Registered Successfully!'
      else
      	flash.now[:danger] = @user.errors.full_messages
        render :new
      end
    end
    private
    def user_params
      	params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

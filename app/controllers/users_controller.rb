class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new(params[:user])
		if @user.save
		else
			render 'new'
		end

	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to Holodeck!"
			redirect_to @user
		else

			render 'new'
		end
	end

	private
    def user_params
      params.require(:user).permit(:name, :email, :username, :password,
                                   :password_confirmation)
    end
end

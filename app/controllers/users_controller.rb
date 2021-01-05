class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(current_user.id)
    @user = User.new
    if @user.update(params.require(:user).permit(image: :image, user_name: :user_name, introduction: :introduction))
      flash[:notice] = "プロフィールが更新されました！！"
      redirect_to action: :show
    end
  end
end

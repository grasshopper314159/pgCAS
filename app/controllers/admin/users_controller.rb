class Admin::UsersController < Admin::BaseController

  def index
    # Uses enum functionality to filter out admins
    @users = User.user
		@users = @users.sort_by{|x| x[:name]}
		
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    flash[:notice] = "User successfully deleted."
    redirect_to admin_users_path
  end
end

class Admin::BaseController < ApplicationController
  before_action :check_admin
  
  def check_admin
    unless current_user.admin?
      return redirect_to root_path, flash[:alert] = 'You dont have access to this.'
    end
  end

end
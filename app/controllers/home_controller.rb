class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to dashboard_path
    else
      redirect_to new_user_session_path
    end
  end

  def dashboard
    @q = current_user.categories.ransack(params[:q])
    @categories = @q.result(distinct: true)
  end
end
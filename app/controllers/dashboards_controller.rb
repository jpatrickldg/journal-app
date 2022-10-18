class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.user?
      render "dashboards/user"
    elsif current_user.admin?
      render "dashboards/admin"
    end
  end
end

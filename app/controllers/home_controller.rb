class HomeController < ApplicationController
  def index
    if user_signed_in?
      @categories = current_user.categories
      render :dashboard
    end
  end
end
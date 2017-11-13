class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
  end

  def dashboard
  	redirect_to dashboard_home_index_path if current_user
  end

  def show
  	
  end
  
end
class HomeController < ApplicationController
	
  def index
  end

  def dashboard
    if current_user.role == 'Party'
      redirect_to new_party_path
    else
       home_index_path
    end
  	@charted_accountant = current_user.charted_accountant
  	@general_setting = current_user.general_setting
    @party = current_user.party
  end

  def show
  	
  end
  
end
class GeneralSettingsController < ApplicationController
	def new
    @general_setting = GeneralSetting.first
	  @general_setting = current_user.general_setting
	end

	def update
    @general_setting = GeneralSetting.shod(params[:id])
   
    if @general_setting.update(general_setting_params)
      flash[:notice] = t('setting_update')
      redirect_to dashboard_home_index_path
    else
      render 'new'
    end
  
  end

  private

  # this private methods tell us exactly which parameters are allowed
  # into our controller actions.
  def general_setting_params
    params.require(:general_setting).permit(:first_name, :last_name, :contact_no, :email, :business_description, :gst_no, :pan, :name_of_service, :service_acc_code, :rate_of_tax, :address, :state_name, :state_code, :image)
  end
end
 
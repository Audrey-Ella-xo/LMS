class StepsAfterRegistrationController < ApplicationController
    include Wicked::Wizard
    before_action :authenticate_user!
  steps :personal, :bank, :employer, :reference, :declaration
  
  def show
    @profile = current_user.profile
    render_wizard
  end
  
  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    render_wizard @profile
  end
  
private

  def finish_wizard_path
    profile_path(current_user)
  end

  def profile_params
    params.require(:profile).permit(:firstname, :lastname, :DOB, :Address, :workplace_address, :workplace, :monthly_net)
  end
  
end

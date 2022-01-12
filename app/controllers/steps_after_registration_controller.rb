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
    params.require(:profile).permit(:firstname, :lastname, :DOB, :Address, :workplace_address, :workplace, :monthly_net, :title, :marital_status, :gender, :phone, :nationality, :acc_name, :bank_name, :acc_number, :branch_name, :emp_phone, :emp_duration, :job_title, :other_income, :ref_title, :ref_address, :ref_email, :ref_firstname, :ref_gender, :ref_lastname, :ref_phone, :attachment, :image, :identification)
  end
  
end

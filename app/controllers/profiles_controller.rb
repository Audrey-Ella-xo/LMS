class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = current_user.build_profile
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    @profile = current_user.build_profile(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        # format.html { redirect_to profile_url(@profile), notice: "Profile was successfully updated." }
        format.html { redirect_to steps_after_registration_path, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/docs/Declaration.pdf", type: "application/pdf", :disposition => 'inline', x_sendfile: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:firstname, :lastname, :DOB, :Address, :workplace_address, :workplace, :monthly_net, :title, :marital_status, :gender, :phone, :nationality, :acc_name, :bank_name, :acc_number, :branch_name, :emp_phone, :emp_duration, :job_title, :other_income, :ref_title, :ref_address, :ref_email, :ref_firstname, :ref_gender, :ref_lastname, :ref_phone, :attachment, :image, :identification)
    end
end

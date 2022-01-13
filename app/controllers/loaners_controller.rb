class LoanersController < ApplicationController
  before_action :set_loaner, only: %i[ show ]

  # GET /loaners or /loaners.json
  def index
    @loaners = current_user.Loaners.all
  end

  # GET /loaners/1 or /loaners/1.json
  def show
  end

  # GET /loaners/new
  def new
    @loaner = Loaner.new
  end

  # POST /loaners or /loaners.json
  def create
    @loaner = current_user.Loaners.build(loaner_params)

    respond_to do |format|
      if @loaner.save
        format.html { redirect_to loaner_url(@loaner), notice: "Loaner was successfully created." }
        format.json { render :show, status: :created, location: @loaner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loaner.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaner
      @loaner = Loaner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loaner_params
      params.require(:loaner).permit(:amount, :duration, :amt_owed, :amt_words, :purpose, :start_date, :end_date, :pay_mode, :rate, :bank_name)
    end
end

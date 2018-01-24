class LocaltionsController < ApplicationController
  before_action :set_localtion, only: [:show, :edit, :update, :destroy]
  before_action :set_member
  before_action :authenticate_member!

  def index
    authorize @localtion
    @localtion = Localtion.all
  end

  def show
    authorize @localtion
  end

  def new
  	@localtion = @member.build_profile
    authorize @localtion
  end

  def edit
    authorize @localtion
  end

  def create
    @localtion = @member.create_localtion(localtion_params)
    authorize @localtion

    respond_to do |format|
      if @localtion.save
        format.html { redirect_to member_localtion_path(@member, @localtion), notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @localtion }
      else
        format.html { render :new }
        format.json { render json: @localtion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localtion
      @localtion = Localtion.find(params[:id])
    end

    def set_member
      @member = Member.find(params[:member_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localtion_params
      params.require(:localtion).permit(:name, :address_1, :address_2, :city, :region, :zip_code, :country, :description, :member_id)
    end

end

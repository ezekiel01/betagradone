class StaatusController < ApplicationController
  before_action :set_staatu, only: [:show, :edit, :update, :destroy]

  # GET /staatus
  # GET /staatus.json
  def index
    @staatus = Staatu.all
  end

  # GET /staatus/1
  # GET /staatus/1.json
  def show
  end

  # GET /staatus/new
  def new
    @staatu = Staatu.new
  end

  # GET /staatus/1/edit
  def edit
  end

  # POST /staatus
  # POST /staatus.json
  def create
    @staatu = Staatu.new(staatu_params)

    respond_to do |format|
      if @staatu.save
        format.html { redirect_to @staatu, notice: 'Staatu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @staatu }
      else
        format.html { render action: 'new' }
        format.json { render json: @staatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staatus/1
  # PATCH/PUT /staatus/1.json
  def update
    respond_to do |format|
      if @staatu.update(staatu_params)
        format.html { redirect_to @staatu, notice: 'Staatu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staatu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staatus/1
  # DELETE /staatus/1.json
  def destroy
    @staatu.destroy
    respond_to do |format|
      format.html { redirect_to staatus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staatu
      @staatu = Staatu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staatu_params
      params.require(:staatu).permit(:name, :content)
    end
end

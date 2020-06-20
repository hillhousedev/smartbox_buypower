class MeterTokensController < ApplicationController
  before_action :set_meter_token, only: [:show, :edit, :update, :destroy, :smartbox_meter]
  skip_before_action :verify_authenticity_token
  # GET /meter_tokens
  # GET /meter_tokens.json
  def index
    @meter_tokens = MeterToken.all
  end

  # GET /meter_tokens/1
  # GET /meter_tokens/1.json
  def show
  end

  # GET /meter_tokens/new
  def new
    @meter_token = MeterToken.new
  end

  # GET /meter_tokens/1/edit
  def edit
  end

  # POST /meter_tokens
  # POST /meter_tokens.json
  def create
    @meter_token = MeterToken.new(meter_token_params)

    respond_to do |format|
      if @meter_token.save
        format.html { redirect_to @meter_token, notice: 'Meter token was successfully created.' }
        format.json { render :show, status: :created, location: @meter_token }
      else
        format.html { render :new }
        format.json { render json: @meter_token.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def smartbox_meter
    @meter_token = MeterToken.new(meter_token_params)

    respond_to do |format|
      if @meter_token.save
        format.html { redirect_to @meter_token, notice: 'Meter token was successfully created.' }
        format.json { render :show, status: :created, location: @meter_token }
      else
        format.html { render :new }
        format.json { render json: @meter_token.errors, status: :unprocessable_entity }
      end
    end
  end 

  # PATCH/PUT /meter_tokens/1
  # PATCH/PUT /meter_tokens/1.json
  def update
    respond_to do |format|
      if @meter_token.update(meter_token_params)
        format.html { redirect_to @meter_token, notice: 'Meter token was successfully updated.' }
        format.json { render :show, status: :ok, location: @meter_token }
      else
        format.html { render :edit }
        format.json { render json: @meter_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meter_tokens/1
  # DELETE /meter_tokens/1.json
  def destroy
    @meter_token.destroy
    respond_to do |format|
      format.html { redirect_to meter_tokens_url, notice: 'Meter token was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meter_token
      @meter_token = MeterToken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meter_token_params
      params.require(:meter_token).permit(:token, :meter_id, :meter_type, :device_id, :device_sim_no, :device_address, :auto_load_device_id)
    end
end

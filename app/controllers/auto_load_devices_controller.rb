class AutoLoadDevicesController < ApplicationController
  before_action :set_auto_load_device, only: [:show, :edit, :update, :destroy]

  # GET /auto_load_devices
  # GET /auto_load_devices.json
  def index
    @auto_load_devices = AutoLoadDevice.all
  end

  # GET /auto_load_devices/1
  # GET /auto_load_devices/1.json
  def show
  end

  # GET /auto_load_devices/new
  def new
    @auto_load_device = AutoLoadDevice.new
  end

  # GET /auto_load_devices/1/edit
  def edit
  end

  # POST /auto_load_devices
  # POST /auto_load_devices.json
  def create
    @auto_load_device = AutoLoadDevice.new(auto_load_device_params)

    respond_to do |format|
      if @auto_load_device.save
        format.html { redirect_to @auto_load_device, notice: 'Auto load device was successfully created.' }
        format.json { render :show, status: :created, location: @auto_load_device }
      else
        format.html { render :new }
        format.json { render json: @auto_load_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_load_devices/1
  # PATCH/PUT /auto_load_devices/1.json
  def update
    respond_to do |format|
      if @auto_load_device.update(auto_load_device_params)
        format.html { redirect_to @auto_load_device, notice: 'Auto load device was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_load_device }
      else
        format.html { render :edit }
        format.json { render json: @auto_load_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_load_devices/1
  # DELETE /auto_load_devices/1.json
  def destroy
    @auto_load_device.destroy
    respond_to do |format|
      format.html { redirect_to auto_load_devices_url, notice: 'Auto load device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_load_device
      @auto_load_device = AutoLoadDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_load_device_params
      params.require(:auto_load_device).permit(:name, :meter_type, :address, :phone_no, :meter_id)
    end
end

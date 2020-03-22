class ViewtestersController < ApplicationController
  before_action :set_viewtester, only: [:show, :edit, :update, :destroy]

  # GET /viewtesters
  # GET /viewtesters.json
  def index
    @viewtesters = Viewtester.all
  end

  # GET /viewtesters/1
  # GET /viewtesters/1.json
  def show
  end

  # GET /viewtesters/new
  def new
    @viewtester = Viewtester.new
  end

  # GET /viewtesters/1/edit
  def edit
  end

  # POST /viewtesters
  # POST /viewtesters.json
  def create
    @viewtester = Viewtester.new(viewtester_params)

    respond_to do |format|
      if @viewtester.save
        format.html { redirect_to @viewtester, notice: 'Viewtester was successfully created.' }
        format.json { render :show, status: :created, location: @viewtester }
      else
        format.html { render :new }
        format.json { render json: @viewtester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewtesters/1
  # PATCH/PUT /viewtesters/1.json
  def update
    respond_to do |format|
      if @viewtester.update(viewtester_params)
        format.html { redirect_to @viewtester, notice: 'Viewtester was successfully updated.' }
        format.json { render :show, status: :ok, location: @viewtester }
      else
        format.html { render :edit }
        format.json { render json: @viewtester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewtesters/1
  # DELETE /viewtesters/1.json
  def destroy
    @viewtester.destroy
    respond_to do |format|
      format.html { redirect_to viewtesters_url, notice: 'Viewtester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewtester
      @viewtester = Viewtester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewtester_params
      params.require(:viewtester).permit(:name, :age)
    end
end

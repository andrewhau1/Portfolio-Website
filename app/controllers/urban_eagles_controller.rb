class UrbanEaglesController < ApplicationController
  before_action :set_urban_eagle, only: [:show, :edit, :update, :destroy]

  # GET /urban_eagles
  # GET /urban_eagles.json
  def index
    @urban_eagles = UrbanEagle.all
  end

  # GET /urban_eagles/1
  # GET /urban_eagles/1.json
  def show
  end

  # GET /urban_eagles/new
  def new
    @urban_eagle = UrbanEagle.new
  end

  # GET /urban_eagles/1/edit
  def edit
  end

  # POST /urban_eagles
  # POST /urban_eagles.json
  def create
    @urban_eagle = UrbanEagle.new(urban_eagle_params)

    respond_to do |format|
      if @urban_eagle.save
        format.html { redirect_to @urban_eagle, notice: 'Urban eagle was successfully created.' }
        format.json { render :show, status: :created, location: @urban_eagle }
      else
        format.html { render :new }
        format.json { render json: @urban_eagle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urban_eagles/1
  # PATCH/PUT /urban_eagles/1.json
  def update
    respond_to do |format|
      if @urban_eagle.update(urban_eagle_params)
        format.html { redirect_to @urban_eagle, notice: 'Urban eagle was successfully updated.' }
        format.json { render :show, status: :ok, location: @urban_eagle }
      else
        format.html { render :edit }
        format.json { render json: @urban_eagle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urban_eagles/1
  # DELETE /urban_eagles/1.json
  def destroy
    @urban_eagle.destroy
    respond_to do |format|
      format.html { redirect_to urban_eagles_url, notice: 'Urban eagle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urban_eagle
      @urban_eagle = UrbanEagle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urban_eagle_params
      params[:urban_eagle]
    end
end

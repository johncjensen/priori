class CrunchbasesController < ApplicationController
  before_action :set_crunchbasis, only: [:show, :edit, :update, :destroy]

  # GET /crunchbases
  # GET /crunchbases.json
  def index
    @crunchbases = Crunchbase.all
  end

  # GET /crunchbases/1
  # GET /crunchbases/1.json
  def show
  end

  # GET /crunchbases/new
  def new
    @crunchbasis = Crunchbase.new
  end

  # GET /crunchbases/1/edit
  def edit
  end

  # POST /crunchbases
  # POST /crunchbases.json
  def create
    @crunchbasis = Crunchbase.new(crunchbasis_params)

    respond_to do |format|
      if @crunchbasis.save
        format.html { redirect_to @crunchbasis, notice: 'Crunchbase was successfully created.' }
        format.json { render :show, status: :created, location: @crunchbasis }
      else
        format.html { render :new }
        format.json { render json: @crunchbasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crunchbases/1
  # PATCH/PUT /crunchbases/1.json
  def update
    respond_to do |format|
      if @crunchbasis.update(crunchbasis_params)
        format.html { redirect_to @crunchbasis, notice: 'Crunchbase was successfully updated.' }
        format.json { render :show, status: :ok, location: @crunchbasis }
      else
        format.html { render :edit }
        format.json { render json: @crunchbasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crunchbases/1
  # DELETE /crunchbases/1.json
  def destroy
    @crunchbasis.destroy
    respond_to do |format|
      format.html { redirect_to crunchbases_url, notice: 'Crunchbase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crunchbasis
      @crunchbasis = Crunchbase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crunchbasis_params
      params[:crunchbasis]
    end
end

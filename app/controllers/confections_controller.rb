class ConfectionsController < ApplicationController
  before_action :set_confection, only: [:show, :edit, :update, :destroy]

  # GET /confections
  # GET /confections.json
  def index
    @confections = Confection.all
  end

  # GET /confections/1
  # GET /confections/1.json
  def show
  end

  # GET /confections/new
  def new
    @confection = Confection.new
  end

  # GET /confections/1/edit
  def edit
  end

  # POST /confections
  # POST /confections.json
  def create
    @confection = Confection.new(confection_params)

    respond_to do |format|
      if @confection.save
        format.html { redirect_to @confection, notice: 'Confection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @confection }
      else
        format.html { render action: 'new' }
        format.json { render json: @confection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confections/1
  # PATCH/PUT /confections/1.json
  def update
    respond_to do |format|
      if @confection.update(confection_params)
        format.html { redirect_to @confection, notice: 'Confection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @confection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confections/1
  # DELETE /confections/1.json
  def destroy
    @confection.destroy
    respond_to do |format|
      format.html { redirect_to confections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confection
      @confection = Confection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confection_params
      params.require(:confection).permit(:name, :code)
    end
end

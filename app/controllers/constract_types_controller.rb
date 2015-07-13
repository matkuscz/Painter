class ConstractTypesController < ApplicationController
  before_action :set_constract_type, only: [:show, :edit, :update, :destroy]

  # GET /constract_types
  # GET /constract_types.json
  def index
    @constract_types = ConstractType.all
  end

  # GET /constract_types/1
  # GET /constract_types/1.json
  def show
  end

  # GET /constract_types/new
  def new
    @constract_type = ConstractType.new
  end

  # GET /constract_types/1/edit
  def edit
  end

  # POST /constract_types
  # POST /constract_types.json
  def create
    @constract_type = ConstractType.new(constract_type_params)

    respond_to do |format|
      if @constract_type.save
        format.html { redirect_to @constract_type, notice: 'Constract type was successfully created.' }
        format.json { render :show, status: :created, location: @constract_type }
      else
        format.html { render :new }
        format.json { render json: @constract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constract_types/1
  # PATCH/PUT /constract_types/1.json
  def update
    respond_to do |format|
      if @constract_type.update(constract_type_params)
        format.html { redirect_to @constract_type, notice: 'Constract type was successfully updated.' }
        format.json { render :show, status: :ok, location: @constract_type }
      else
        format.html { render :edit }
        format.json { render json: @constract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constract_types/1
  # DELETE /constract_types/1.json
  def destroy
    @constract_type.destroy
    respond_to do |format|
      format.html { redirect_to constract_types_url, notice: 'Constract type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constract_type
      @constract_type = ConstractType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constract_type_params
      params.require(:constract_type).permit(:contract_type)
    end
end

class PartsController < ApplicationController
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  # GET /parts
  # GET /parts.json
  def index
    @parts = Part.all
  end

  # GET /parts/1
  # GET /parts/1.json
  def show
  end

  # GET /parts/new
  def new
    @part = Part.new
  end

  # GET /parts/1/edit
  def edit
  end

  def search
    @search_part = SearchPart.new
    default_value = 'foobarbaz'*10
    @search_part.column1 = default_value
    @search_part.column2 = default_value
    @search_part.column3 = default_value
    @search_part.column4 = default_value
    @search_part.column5 = default_value
    @search_part.column6 = default_value
    @search_part.column7 = default_value
    @search_part.column8 = default_value
    @search_part.column9 = default_value
    @search_part.column10 = default_value
    @search_part.column11 = default_value
    @search_part.column12 = default_value
    @search_part.column13 = default_value
    @search_part.column14 = default_value
    @search_part.column15 = default_value
    @search_part.column16 = default_value
    @search_part.column17 = default_value
    @search_part.column18 = default_value
    @search_part.column19 = default_value
    @search_part.column20 = default_value
    @search_part.column20 = default_value
    @search_part.column21 = default_value
    @search_part.column22 = default_value
    @search_part.column23 = default_value
    @search_part.column24 = default_value
    @search_part.column25 = default_value
    @search_part.column26 = default_value
    @search_part.column27 = default_value
    @search_part.column28 = default_value
    @search_part.column29 = default_value
    @search_part.column30 = default_value
  end

  # POST /parts
  # POST /parts.json
  def create
    @part = Part.new(part_params)

    respond_to do |format|
      if @part.save
        format.html { redirect_to @part, notice: 'Part was successfully created.' }
        format.json { render action: 'show', status: :created, location: @part }
      else
        format.html { render action: 'new' }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts/1
  # PATCH/PUT /parts/1.json
  def update
    respond_to do |format|
      if @part.update(part_params)
        format.html { redirect_to @part, notice: 'Part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts/1
  # DELETE /parts/1.json
  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part
      @part = Part.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_params
      params.require(:part).permit(:column1)
    end
end

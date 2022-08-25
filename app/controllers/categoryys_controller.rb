class CategoryysController < ApplicationController
  before_action :set_categoryy, only: %i[ show edit update destroy ]

  # GET /categoryys or /categoryys.json
  def index
    @categoryys = Categoryy.all
  end

  # GET /categoryys/1 or /categoryys/1.json
  def show
  end

  # GET /categoryys/new
  def new
    @categoryy = Categoryy.new
  end

  # GET /categoryys/1/edit
  def edit
  end

  # POST /categoryys or /categoryys.json
  def create
    @categoryy = Categoryy.new(categoryy_params)

    respond_to do |format|
      if @categoryy.save
        format.html { redirect_to categoryy_url(@categoryy), notice: "Categoryy was successfully created." }
        format.json { render :show, status: :created, location: @categoryy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoryy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoryys/1 or /categoryys/1.json
  def update
    respond_to do |format|
      if @categoryy.update(categoryy_params)
        format.html { redirect_to categoryy_url(@categoryy), notice: "Categoryy was successfully updated." }
        format.json { render :show, status: :ok, location: @categoryy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoryy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoryys/1 or /categoryys/1.json
  def destroy
    @categoryy.destroy

    respond_to do |format|
      format.html { redirect_to categoryys_url, notice: "Categoryy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoryy
      @categoryy = Categoryy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoryy_params
      params.require(:categoryy).permit(:name, :user_id)
    end
end

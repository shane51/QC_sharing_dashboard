class MemebersController < ApplicationController
  before_action :set_memeber, only: [:show, :edit, :update, :destroy]

  # GET /memebers
  # GET /memebers.json
  def index
    @memebers = Memeber.all
  end

  # GET /memebers/1
  # GET /memebers/1.json
  def show
  end

  # GET /memebers/new
  def new
    @memeber = Memeber.new
  end

  # GET /memebers/1/edit
  def edit
  end

  # POST /memebers
  # POST /memebers.json
  def create
    @memeber = Memeber.new(memeber_params)

    respond_to do |format|
      if @memeber.save
        format.html { redirect_to @memeber, notice: 'Memeber was successfully created.' }
        format.json { render :show, status: :created, location: @memeber }
      else
        format.html { render :new }
        format.json { render json: @memeber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memebers/1
  # PATCH/PUT /memebers/1.json
  def update
    respond_to do |format|
      if @memeber.update(memeber_params)
        format.html { redirect_to @memeber, notice: 'Memeber was successfully updated.' }
        format.json { render :show, status: :ok, location: @memeber }
      else
        format.html { render :edit }
        format.json { render json: @memeber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memebers/1
  # DELETE /memebers/1.json
  def destroy
    @memeber.destroy
    respond_to do |format|
      format.html { redirect_to memebers_url }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memeber
      @memeber = Memeber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memeber_params
      params.require(:memeber).permit(:name, :title, :birthday, :description, :photo,:phone, :notes)
    end
  

end

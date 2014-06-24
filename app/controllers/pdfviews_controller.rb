class PdfviewsController < ApplicationController
  before_action :set_pdfview, only: [:show, :edit, :update, :destroy]
  # GET /pdfviews
  # GET /pdfviews.json
  def index
    @pdfviews = Pdfview.all
  end

  # GET /pdfviews/1
  # GET /pdfviews/1.json
  def show

  end

  # GET /pdfviews/new
  def new
    @pdfview = Pdfview.new
  end

  # GET /pdfviews/1/edit
  def edit
  end

  # POST /pdfviews
  # POST /pdfviews.json
  
  
  def create
    @pdfview = Pdfview.new(pdfview_params)
	
	uploaded_io = params[:pdfview][:path]
	@filename = uploaded_io.original_filename
	
	@pdfview.name = @filename.gsub(".pdf", "")
	@pdfview.path = "#{Rails.root}/public/uploads/" + @filename

    respond_to do |format|
      if @pdfview.save
		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
			file.write(uploaded_io.read)
		end
        format.html { redirect_to @pdfview, notice: 'Pdfview was successfully created.' }
        format.json { render :show, status: :created, location: @pdfview }
      else
        format.html { render :new }
        format.json { render json: @pdfview.errors, status: :unprocessable_entity }
      end
    end
	
	
  end

  # PATCH/PUT /pdfviews/1
  # PATCH/PUT /pdfviews/1.json
  def update
    respond_to do |format|
      if @pdfview.update(pdfview_params)
        format.html { redirect_to @pdfview, notice: 'Pdfview was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdfview }
      else
        format.html { render :edit }
        format.json { render json: @pdfview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdfviews/1
  # DELETE /pdfviews/1.json
  def destroy
    @pdfview.destroy
    respond_to do |format|
      format.html { redirect_to pdfviews_url }
      format.json { head :no_content }
    end
  end
  
  def upload
	
  end
 
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdfview
      @pdfview = Pdfview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdfview_params
      params.require(:pdfview).permit(:name, :path, :doctype)
    end
end

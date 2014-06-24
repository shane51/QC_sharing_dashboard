class PreviewpageController < ApplicationController
  def index
   @pdfnames=Pdfview.order(:doctype)
   @pdf_groups=@pdfnames.group_by{ |pdf| pdf.doctype }
   
  end 
  
   def pdf
    @pdfname= Pdfview.find(params[:id])
	pdf_filename = File.join("#{Rails.root}/public/uploads", @pdfname.name)
	send_file(pdf_filename, :filename => @pdfname.name, :disposition => 'inline', :type => "application/pdf")
  end
  
end

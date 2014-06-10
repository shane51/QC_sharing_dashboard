json.array!(@pdfviews) do |pdfview|
  json.extract! pdfview, :id, :name, :path, :doctype
  json.url pdfview_url(pdfview, format: :json)
end

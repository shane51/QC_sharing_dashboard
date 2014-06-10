json.array!(@links) do |link|
  json.extract! link, :id, :name, :catgory, :address, :count
  json.url link_url(link, format: :json)
end

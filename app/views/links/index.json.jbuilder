json.array!(@links) do |link|
  json.extract! link, :id, :link, :title
  json.url link_url(link, format: :json)
end

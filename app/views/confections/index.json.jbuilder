json.array!(@confections) do |confection|
  json.extract! confection, :id, :name, :code
  json.url confection_url(confection, format: :json)
end

json.array!(@parts) do |part|
  json.extract! part, :id, :column1
  json.url part_url(part, format: :json)
end

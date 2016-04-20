json.array!(@note3s) do |note3|
  json.extract! note3, :id, :title, :note
  json.url note3_url(note3, format: :json)
end

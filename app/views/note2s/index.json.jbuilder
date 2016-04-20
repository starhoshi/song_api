json.array!(@note2s) do |note2|
  json.extract! note2, :id, :title, :note
  json.url note2_url(note2, format: :json)
end

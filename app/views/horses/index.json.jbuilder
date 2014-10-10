json.array!(@horses) do |horse|
  json.extract! horse, :id, :name, :age, :breed
  json.url horse_url(horse, format: :json)
end

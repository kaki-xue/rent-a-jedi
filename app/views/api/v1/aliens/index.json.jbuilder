json.aliens do
  json.array! @aliens do |story|
    json.extract! alien, :name, :image, :skill, :price_per_day, :description, :user_id
  end
end

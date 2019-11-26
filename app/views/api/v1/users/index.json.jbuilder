json.users do
  json.array! @users do |user|
    json.extract! user, :id, :open_id
  end
end

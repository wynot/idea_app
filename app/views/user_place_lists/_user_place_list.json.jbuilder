json.extract! user_place_list, :id, :created_at, :updated_at
json.url user_place_list_url(user_place_list, format: :json)
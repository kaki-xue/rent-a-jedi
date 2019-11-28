json.extract! @booking, :id, :user_id, :start_date, :end_date, :alien_id
json.alien @booking.alien, :name, :skill, :image, :description, :price_per_day

json.bookings do
   json.array! @bookings do |booking|
     json.extract! booking, :id, :user_id, :alien_id, :start_date, :end_date
     json.alien booking.alien, :name, :image, :price_per_day, :skill, :description
   end
 end

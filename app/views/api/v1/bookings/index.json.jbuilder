json.bookings do
   json.array! @bookings do |booking|
     json.extract! booking, :id, :user_id, :alien_id, :start_date, :end_date
   end
 end
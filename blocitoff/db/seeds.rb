require 'faker'

10.times do
      user = User.new(
        
        email:     Faker::Internet.email,
        password:  "password",
        confirmation_token: Faker::Internet.device_token,
        confirmed_at: Faker::Time.between(2.days.ago, Time.now),
        confirmation_sent_at: Faker::Time.between(2.days.ago, Time.now),
        unconfirmed_email: nil
         )
      user.save
    end
    
    100.times do
   Item.create!(

     name:  Faker::Lorem.sentence,
     user_id: Faker::Number.between(1, 10)
    
   )
 end
    





puts "#{User.count} users created"
puts "#{Item.count} items created"



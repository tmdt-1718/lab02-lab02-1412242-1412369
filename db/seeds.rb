User.delete_all
Message.delete_all
Conservation.delete_all
UserConservation.delete_all

user1= User.create!(name:"ly thanh nhan",email:"nhan@gmail.com",password:"123123",avatar:"/avatar/nhan.jpg")
user2= User.create!(name:"nguyen quoc khanh",email:"khanh@gmail.com",password:"123123",avatar:"/avatar/khanh.jpg")
user3= User.create!(name:"thai nguyen hoang phat",email:"phat@gmail.com",password:"123123",avatar:"/avatar/phat.jpg")

cons1 = Conservation.create!(user1:user1.id,user2:user2.id)
cons2 = Conservation.create!(user1:user1.id,user2:user3.id)
cons3 = Conservation.create!(user1:user2.id,user2:user3.id)

UserConservation.create!(user_id:user1.id,conservation_id:cons1.id)
UserConservation.create!(user_id:user2.id,conservation_id:cons1.id)

UserConservation.create!(user_id:user1.id,conservation_id:cons2.id)
UserConservation.create!(user_id:user3.id,conservation_id:cons2.id)


UserConservation.create!(user_id:user2.id,conservation_id:cons3.id)
UserConservation.create!(user_id:user3.id,conservation_id:cons3.id)


cons1.messages.create!(sender:user1.id,avatar:user1.avatar,content:"user1 sent to user2")
cons1.messages.create!(sender:user2.id, avatar:user2.avatar, content:"user 2 sent to user1")

cons2.messages.create!(sender:user1.id,avatar:user1.avatar,content:"user1 sent to user3")
cons2.messages.create!(sender:user3.id, avatar:user3.avatar, content:"user 3 sent to user1")

cons3.messages.create!(sender:user2.id,avatar:user2.avatar,content:"user2 sent to user3")
cons3.messages.create!(sender:user3.id, avatar:user3.avatar, content:"user 3 sent to user2")

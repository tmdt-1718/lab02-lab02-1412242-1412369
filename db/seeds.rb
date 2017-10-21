User.delete_all
Message.delete_all
Conservation.delete_all
UserConservation.delete_all

user1= User.create!(name:"ly thanh nhan",email:"nhan@gmail.com",password:"123123",avatar:"/avatar/nhan.jpg")
user2= User.create!(name:"nguyen quoc khanh",email:"khanh@gmail.com",password:"123123",avatar:"/avatar/khanh.jpg")
user3= User.create!(name:"thai nguyen hoang phat",email:"phat@gmail.com",password:"123123",avatar:"/avatar/phat.jpg")

nhan_khanh = Conservation.create!(user1:user1.id,user2:user2.id,name:"nhan vs khanh")
nhan_phat = Conservation.create!(user1:user1.id,user2:user3.id,name:"nhan vs phat")
khanh_phat = Conservation.create!(user1:user2.id,user2:user3.id,name:"khanh vs phat")

UserConservation.create!(user_id:user1.id,conservation_id:nhan_khanh.id)
UserConservation.create!(user_id:user2.id,conservation_id:nhan_khanh.id)

UserConservation.create!(user_id:user1.id,conservation_id:nhan_phat.id)
UserConservation.create!(user_id:user3.id,conservation_id:nhan_phat.id)


UserConservation.create!(user_id:user2.id,conservation_id:khanh_phat.id)
UserConservation.create!(user_id:user3.id,conservation_id:khanh_phat.id)


nhan_khanh.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user2.name}")
nhan_khanh.messages.create!(sender:user2.id, avatar:user2.avatar, content:"#{user2.name} --> #{user1.name}")
nhan_khanh.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user2.name}")
nhan_khanh.messages.create!(sender:user2.id, avatar:user2.avatar, content:"#{user2.name} --> #{user1.name}")
nhan_khanh.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user2.name}")
nhan_khanh.messages.create!(sender:user2.id, avatar:user2.avatar, content:"#{user2.name} --> #{user1.name}")
nhan_khanh.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user2.name}")
nhan_khanh.messages.create!(sender:user2.id, avatar:user2.avatar, content:"#{user2.name} --> #{user1.name}")
nhan_khanh.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user2.name}")
nhan_khanh.messages.create!(sender:user2.id, avatar:user2.avatar, content:"#{user2.name} --> #{user1.name}")




nhan_phat.messages.create!(sender:user1.id,avatar:user1.avatar,content:"#{user1.name} --> #{user3.name}")
nhan_phat.messages.create!(sender:user3.id, avatar:user3.avatar, content:"#{user3.name} --> #{user1.name}")

khanh_phat.messages.create!(sender:user2.id,avatar:user2.avatar,content:"#{user2.name}--> #{user3.name}")
khanh_phat.messages.create!(sender:user3.id, avatar:user3.avatar, content:"#{user3.name} --> #{user2.name}")

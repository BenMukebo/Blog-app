# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

lorem_bio = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsam, labore nam? Perferendis hic,
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'

image1 = 'https://user-images.githubusercontent.com/79058364/150398546-6d9d32a8-dc4c-4e26-a6ff-0ff0b4eafe9f.jpg'
image2 = 'https://user-images.githubusercontent.com/79058364/150398981-d7619766-6bf3-4878-9bc7-b0ef2d33f815.jpg'
image3 = 'https://user-images.githubusercontent.com/79058364/150375449-6871e044-0e98-4378-8651-08d29f8adbf8.jpg'
image4 = 'https://user-images.githubusercontent.com/79058364/150375487-d5a82b30-cef1-45b1-be4f-28413e8839a7.jpg'
image5 = 'https://user-images.githubusercontent.com/79058364/150398570-de44d578-8f17-4150-b7b4-15c085e7d627.jpg'

user1 = User.create!(name: 'John Doe', photo: image1, bio: "#{lorem_bio}- John Doe", posts_counter: 0)
user2 = User.create!(name: 'Michal Smith ', photo: image2, bio: "#{lorem_bio}- Michal Smith", posts_counter: 0)
user3 = User.create!(name: 'Julia Lisa', photo: image3, bio: "#{lorem_bio}- Danny Dril", posts_counter: 0)
user4 = User.create!(name: 'Gomez lucky', photo: image4, bio: "#{lorem_bio}- Gomez lucky", posts_counter: 0)
user5 = User.create!(name: 'Barry Alen', photo: image5, bio: "#{lorem_bio}- Barry alen", posts_counter: 0)

lorem_one = '_One_Donec dapibus consequat tellus a pulvinar. Fusce auctor rhoncus orci a semper. Sed interdum accumsan 
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi corrupti doloremque 
  laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti ohfdjqjdoijsdasndkadsasdadkjaklnasd
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'
lorem_two = '_Two_Mauris Partial templates (partials) are a way of breaking the rendering process into more manageable 
  chunks. Partials allow you to extract pieces of code from your templates to separate files and also reuse them t
  hroughout your templates.hendrerit odio eu quam dapibus, sit amet malesuada quam pulvinar venenatis ex, eu tristique orci
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'
lorem_third = '_Three_Fusce auctor rhoncus orci a semper dapibus, sit amet malesuada quam pulvinar
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'
lorem_four = '_Four_sit amet malesuada Fusce auctor rhoncus orci a semper dapibus, sit amet malesuada quam pulvinar
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'
lorem_five = '_five_gtysit amet malesuada Fusce auctor rhoncus orci a semper dapibus, sit amet malesuada quam pulvinar
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti
  doloremqueamet excepturi laborum,amet excepturi omnis quae placeat facere aliquid amet excepturi.'

post1 = user1.posts.create!(title: 'Animal', text: lorem_one, comments_counter: 0, likes_counter: 0)
post2 = user1.posts.create!(title: 'Population', text: lorem_two, comments_counter: 0, likes_counter: 0)

post3 = user2.posts.create!(title: 'Science', text: lorem_one, comments_counter: 0, likes_counter: 0)
post4 = user2.posts.create!(title: 'Education', text: lorem_two, comments_counter: 0, likes_counter: 0)
post5 = user2.posts.create!(title: 'Business', text: lorem_third, comments_counter: 0, likes_counter: 0)

post6 = user3.posts.create!(title: 'Sports', text: lorem_one, comments_counter: 0, likes_counter: 0)
post7 = user3.posts.create!(title: 'Agriculture', text: lorem_two, comments_counter: 0, likes_counter: 0)
post8 = user3.posts.create!(title: 'School', text: lorem_third, comments_counter: 0, likes_counter: 0)
post9 = user3.posts.create!(title: 'Sport', text: lorem_four, comments_counter: 0, likes_counter: 0)
post10 = user3.posts.create!(title: 'Arts', text: lorem_five, comments_counter: 0, likes_counter: 0)
post11 = user3.posts.create!(title: 'Univer', text: lorem_two, comments_counter: 0, likes_counter: 0)

post12 = user4.posts.create!(title: 'Programming', text: lorem_one, comments_counter: 0, likes_counter: 0)
post13 = user4.posts.create!(title: 'Arts', text: lorem_two, comments_counter: 0, likes_counter: 0)
post14 = user4.posts.create!(title: 'Achool', text: lorem_third, comments_counter: 0, likes_counter: 0)
post15 = user4.posts.create!(title: 'Business', text: lorem_four, comments_counter: 0, likes_counter: 0)

user1.comments.create!(text: 'Well Done 👏👏👏', post: post1)
user1.comments.create!(text: 'Great like post ✔️✔️  ', post: post3)
user1.comments.create!(text: 'really nice post brother', post: post2)
user2.comments.create!(text: 'This is a great Read', post: post2)
user2.comments.create!(text: 'Love 💕 it Aswell !!!', post: post4)
user2.comments.create!(text: 'Love 💓 it!!!', post: post5)
user3.comments.create!(text: 'We still need one more post😢', post: post5)
user3.comments.create!(text: 'This is a terific post ', post: post6)
user3.comments.create!(text: 'Well say,♻️♻️ that is realy true ', post: post8)
user3.comments.create!(text: 'Great look on this article', post: post7)
user3.comments.create!(text: 'Well Done 👏👏👏', post: post1)
user4.comments.create!(text: 'Great like post ✔️✔️  ', post: post1)
user4.comments.create!(text: 'really nice post brother', post: post8)
user4.comments.create!(text: 'This is a great Read', post: post9)
user4.comments.create!(text: 'Love 💕 it Aswell !!!', post: post10)
user4.comments.create!(text: 'Love 💓 it!!!', post: post11)
user5.comments.create!(text: 'We still need one more post😢', post: post11)
user5.comments.create!(text: 'This is a terific post ', post: post12)
user5.comments.create!(text: 'Well say,♻️♻️ that is realy true ', post: post13)
user5.comments.create!(text: 'Great look on this article', post: post11)

user2.likes.create!(post: post1)
user3.likes.create!(post: post1)
user1.likes.create!(post: post3)
user3.likes.create!(post: post3)
user5.likes.create!(post: post3)
user1.likes.create!(post: post4)
user4.likes.create!(post: post4)
user4.likes.create!(post: post5)
user2.likes.create!(post: post5)
user2.likes.create!(post: post6)
user2.likes.create!(post: post6)
user5.likes.create!(post: post7)
user4.likes.create!(post: post7)
user1.likes.create!(post: post7)
user2.likes.create!(post: post8)
user3.likes.create!(post: post9)
user1.likes.create!(post: post9)
user3.likes.create!(post: post10)
user5.likes.create!(post: post11)
user1.likes.create!(post: post12)
user4.likes.create!(post: post13)
user4.likes.create!(post: post14)
user3.likes.create!(post: post15)


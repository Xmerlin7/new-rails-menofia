user1 = User.create!(name: "Alice", email: "alice@example.com", address: "123 Main St")
user2 = User.create!(name: "Bob",   email: "bob@example.com",   address: "456 Oak Ave")

post1 = Post.create!(title: "First Post",  content: "Hello world",  creator: user1)
post2 = Post.create!(title: "Second Post", content: "Rails is fun", creator: user2)

editor1 = User.create!(name: "Carol", email: "carol@example.com", address: "789 Pine Rd")
editor2 = User.create!(name: "Dave",  email: "dave@example.com",  address: "101 Elm St")

post1.editors << [editor1, editor2]
post2.editors << [editor1]

puts "Seeded successfully!"

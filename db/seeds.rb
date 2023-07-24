puts "Seeding data"

Comment.destroy_all
Photo.destroy_all
Category.destroy_all
# create Category
wallpapers = Category.create(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens.")
wallpapers.cover.attach(io: File.open("db/images/wallpapers.png"), filename: "wallpapers_cover")

nature = Category.create(name: "Nature", description: "Let’s celebrate the magic of Mother Earth — with images of everything our planet has to offer.")
nature.cover.attach(io: File.open("db/images/nature.png"), filename: "nature_cover")

people = Category.create(name: "People", description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups.")
people.cover.attach(io: File.open("db/images/people.png"), filename: "people_cover")


# create photo
purple_lake = Photo.create(title: "Purple lake", description:"Nice and big purple lake.", category: nature)
purple_lake.image.attach(io: File.open("db/images/purple_lake.png"), filename: "purple_lake")

green_plant = Photo.create(title: "Green plant", description:"Nice and big Green plant.", category: nature)
green_plant.image.attach(io: File.open("db/images/green_plant.png"), filename: "green_plant")

lonely_bird = Photo.create(title: "Lonely bird", description:"Nice and big Lonely bird.", category: nature)
lonely_bird.image.attach(io: File.open("db/images/lonely_bird.png"), filename: "lonely_bird")

squirrel = Photo.create(title: "squirrel", description:"Nice and big squirrel.", category: wallpapers)
squirrel.image.attach(io: File.open("db/images/squirrel.png"), filename: "squirrel")

# create comments category
Comment.create(body: "This is an example of a comment for this category.", commentable: nature)

Comment.create(body: "This is an example of a comment for this category.", commentable: nature)

Comment.create(body: "This is an example of a comment for this category.", commentable: wallpapers)

Comment.create(body: "This is an example of a comment for this category.", commentable: people)


# coments photo
Comment.create(body: "This is an example of a comment for this photo.", commentable: purple_lake)

Comment.create(body: "This is an example of a comment for this photo.", commentable: purple_lake)

Comment.create(body: "This is an example of a comment for this photo.", commentable: green_plant)

Comment.create(body: "This is an example of a comment for this photo.", commentable: squirrel)

puts "Finish Data"